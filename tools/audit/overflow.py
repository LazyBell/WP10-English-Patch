import sys,os,json,re,struct,collections
sys.path.insert(0,os.path.expanduser('~/tools'))
import wrap
d=open(os.path.expanduser('~/work/pc_out/WMM.DAT'),'rb').read()
B=json.load(open(os.path.expanduser('~/work/pc/pc_banks.json')))
banks=[];p=0
for bi,(_,cnt,_) in enumerate(B):
    assert struct.unpack_from('<I',d,p)[0]==cnt,(bi,p)
    offs=struct.unpack_from('<%dI'%cnt,d,p+4);banks.append((p,cnt,offs))
    if bi+1<len(B):
        nc=B[bi+1][1];q=p+offs[-1]+1;q+=(-(q))%0x40
        while not (struct.unpack_from('<I',d,q)[0]==nc and struct.unpack_from('<I',d,q+4)[0]==4+4*nc): q+=0x40
        p=q
res=[]
TXT=re.compile(rb'\x01"((?:\x1b[KH]|[^\x00-\x1f])*)')
for bi,(p,cnt,offs) in enumerate(banks):
    LIM=wrap.LIMITS.get(bi,wrap.LIMIT)
    for k in range(cnt):
        a=p+offs[k];b=p+offs[k+1] if k+1<cnt else banks[bi+1][0] if bi+1<len(banks) else len(d)
        m=d[a:b]
        for ln in re.split(rb'[\n\x05\x04]',m):
            x=0.0;s=''
            i=0
            while i<len(ln):
                mt=TXT.match(ln,i)
                if mt:
                    t=mt.group(1)
                    if all(c<128 for c in t): tt=t.decode();x+=wrap.tw(tt);s+=tt
                    else: x+=1000*len(t)/2;s+='[JP]'
                    i=mt.end();continue
                if ln[i]==2 and i+2<len(ln) and ln[i+2]>=0x80: x+=wrap.VAR;s+='{V}';i+=3;continue
                i+=1
            if x>LIM*1.0 and s.strip(): res.append((round(x/LIM,2),bi,k,s))
res.sort(reverse=True)
print(len(banks),'banks',len(res),'over')
c=collections.Counter(r[1] for r in res);print(c.most_common(20))
json.dump(res,open('/tmp/over.json','w'),ensure_ascii=False)
for r in res[:40]: print(r)
