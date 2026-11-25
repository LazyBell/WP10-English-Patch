import json,os,sys,re
sys.path.insert(0,os.path.expanduser('~/tools'))
import evcrypt
from wrap import tw
W=os.path.expanduser('~/work/'); OUT=os.path.expanduser(sys.argv[1] if len(sys.argv)>1 else '~/mnt/eden/load/01000AE025452000/English/romfs/EVENT/')
os.makedirs(OUT,exist_ok=True)
S=json.load(open(W+'ev_strings.json'))
PC=len(sys.argv)>1
def pwrap(s,lim):
    out=[];line=''
    for w in s.split(' '):
        t=(line+' '+w) if line else w
        if tw(t)>lim and line: out.append(line); line=w
        else: line=t
    out.append(line); return '\n'.join(out)
for key,fn,trf in (('H','HistoricalTrainingInfo','ev_tr_H.json'),('U','UmasonaInfo','ev_tr_U.json')):
    b=bytearray(open(W+'EVENT/'+fn+'.dec','rb').read()); tr=json.load(open(W+trf)); n=0
    for i,(off,cap,kind,jp) in enumerate(S[key]):
        e=tr.get(str(i))
        if e is None: continue
        if key=='H' and kind=='info': e=pwrap(e,3000)
        if PC and key=='U' and kind=='desc': e=pwrap(' '.join(e.replace('\n',' ').split()),1250).replace('\n',' \n')
        elif PC: e=re.sub(r'(?<! )\n',' \n',e)
        eb=e.encode('ascii')
        assert len(eb)<cap,(i,len(eb),cap)
        b[off:off+cap]=eb+b'\0'*(cap-len(eb)); n+=1
    open(OUT+fn+'.bin','wb').write(evcrypt.enc(bytes(b))); print(fn,n)
    assert evcrypt.dec(open(OUT+fn+'.bin','rb').read())==bytes(b)
