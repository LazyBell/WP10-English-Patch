import sys,os,json,re,collections,struct
sys.path.insert(0,os.path.expanduser('~/tools'))
from wmmbuild import segs
from wmm import decode
W=os.path.expanduser('~/work/')
def loadf(path,bankfile):
    d=open(path,'rb').read();B=json.load(open(bankfile));banks=[]
    for pos,cnt,size in B:
        bank=d[pos:pos+size];t=struct.unpack('<%dI'%cnt,bank[4:4+4*cnt])
        banks.append((pos,[bank[t[k]:(t[k+1] if k+1<cnt else size)] for k in range(cnt)]))
    return banks
pc=loadf(W+'pc/WMM_jp.DAT',W+'pc/pc_banks.json')
D=json.load(open(W+'pc/texts_dump.json',encoding='utf8'))
OK=set("I I'll I'm I'd I've let's you we we'll if so please it's that's it'll it'd you've glad thanks maybe shall when how what thank was is are were has have had won wins will can could would should did does seems seemed looks looked showed shows ran runs took takes got gets made makes became becomes may might must also still already just really finally always never came comes went goes finished beat beats lost loses kept keeps left leaves gave gives scored earned earns ranked reached set stands stood needs wants wanted likes loves hates knows tried tries managed hit broke".split())
M={};F=collections.Counter();ex={};EN={}
for key,texts in D.items():
    b,k=map(int,key.split(':'))
    if b==20: continue
    ss=[decode(x) for x in segs(pc[b][1][k])]
    if len(ss)!=len(texts): continue
    for j,e in zip(ss,texts):
        if not isinstance(e,str) or not e.startswith(' - '): continue
        w=re.split(r'[ ,.!?]',e[3:])
        w0=w[0]
        if w0 in OK: continue
        if w0 in ('it','they','he','she') and len(w)>1 and w[1] in OK: continue
        if w0=='its': continue
        F[j]+=1;ex.setdefault(j,key);EN[j]=e;M.setdefault(b,[]);(key in M[b]) or M[b].append(key)

json.dump({str(b):v for b,v in M.items()},open('/tmp/remain_msgs.json','w'))
for b,v in sorted(M.items(),key=lambda x:-len(x[1])): print(b,len(v),end='; ')
