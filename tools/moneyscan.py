import struct,re,json,os,bisect
d=open(os.path.expanduser('~/work/v104/wp10_104_dec.exe'),'rb').read()
pe=struct.unpack_from('<I',d,0x3c)[0];ns=struct.unpack_from('<H',d,pe+6)[0];oh=struct.unpack_from('<H',d,pe+20)[0]
S={}
for k in range(ns):
    o=pe+24+oh+40*k;S[d[o:o+8].rstrip(b'\0').decode()]=struct.unpack_from('<IIII',d,o+8)
def r2f(r,sec): vs,va,rs,rp=S[sec];return r-va+rp
vs,va,rs,rp=S['.rdata'];rd=d[rp:rp+rs]
U=[b'\x89\x7e',b'\x96\x9c',b'\x89\xad']
strs={}
for m in re.finditer(rb'[^\x00]{1,40}\x00',rd):
    s=m.group()[:-1]
    if not any(u in s for u in U): continue
    try: t=s.decode('cp932')
    except: continue
    if '%' in t and len(t)<30 and re.search('[円万億]',t): strs[va+m.start()]=t
# refs
tv,ta,trs,trp=S['.text'];tx=d[trp:trp+trs]
P=S['.pdata'];pd=d[P[3]:P[3]+P[0]];F=[struct.unpack_from('<III',pd,i) for i in range(0,len(pd)-11,12)];F.sort();FS=[f[0] for f in F]
def fn(r):
    j=bisect.bisect_right(FS,r)-1
    return F[j][0] if j>=0 and F[j][1]>r else None
refs={}
for m in re.finditer(rb'[\x48\x4c]\x8d[\x05\x0d\x15\x1d\x25\x2d\x35\x3d]',tx):
    i=m.start();rva=ta+i+7+struct.unpack_from('<i',tx,i+3)[0]
    if rva in strs: refs.setdefault(rva,[]).append((ta+i,fn(ta+i)))
out=[]
for r,t in sorted(strs.items()):
    out.append([hex(r),t,[[hex(a),hex(f or 0)] for a,f in refs.get(r,[])]])
json.dump(out,open(os.path.expanduser('~/work/v104/money_fmts.json'),'w'),ensure_ascii=False,indent=0)
print(len(out),sum(len(x[2]) for x in out))
from collections import Counter
c=Counter(f for x in out for a,f in x[2]);print(len(c))
for x in out: print(x[0],repr(x[1]),len(x[2]),' '.join(sorted(set(f for a,f in x[2])))[:80])
