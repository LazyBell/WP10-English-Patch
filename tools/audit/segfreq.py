import sys,os,json,re,collections
sys.path.insert(0,os.path.expanduser('~/tools'))
from wmmbuild import segs
from wmm import decode
W=os.path.expanduser('~/work/')
exec(open(os.path.expanduser('~/tools/wmmapply_pc.py')).read().split('def rstrip0')[0].split("W=os.path.expanduser('~/work/')")[1].split('def loadf')[0]) if False else None
import struct
def loadf(path,bankfile):
    d=open(path,'rb').read();B=json.load(open(bankfile));banks=[]
    for pos,cnt,size in B:
        bank=d[pos:pos+size];t=struct.unpack('<%dI'%cnt,bank[4:4+4*cnt])
        banks.append((pos,[bank[t[k]:(t[k+1] if k+1<cnt else size)] for k in range(cnt)]))
    return banks
pc=loadf(W+'pc/WMM_jp.DAT',W+'pc/pc_banks.json')
D=json.load(open(W+'pc/texts_dump.json',encoding='utf8'))
F=collections.defaultdict(collections.Counter);where=collections.defaultdict(list)
for key,texts in D.items():
    b,k=map(int,key.split(':'));ss=[decode(x) for x in segs(pc[b][1][k])]
    if len(ss)!=len(texts): continue
    for j,e in zip(ss,texts):
        if e is None: continue
        F[j][e]+=1; where[j].append(key)
bad=[]
for j,c in F.items():
    n=sum(c.values());e=c.most_common(1)[0][0]
    if re.match(r"^ - |^ -$",e) or re.search(r" - (that|this|it|they)\b",e) or e.endswith(' - '):
        bad.append((n,j,e))
bad.sort(reverse=True)
json.dump([[n,j,e,where[j][:3]] for n,j,e in bad],open(W+'pc/audit_badsegs.json','w',encoding='utf8'),ensure_ascii=False,indent=0)
print(len(bad),sum(n for n,_,_ in bad))
for n,j,e in bad[:60]: print(n,repr(j),'=>',repr(e))
