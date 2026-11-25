# list unique risky untranslated segs per bank with one neighbor context
import sys,os,json
sys.path.insert(0,os.path.expanduser('~/tools'))
from wmmbuild import load,segs
from wmm import decode
from tr import look,need,risky,L
sd=L('segdict.json',{}); ctx=L('ctx.json',{})
d,banks=load()
bank=int(sys.argv[1]); seen={}
msgs=banks[bank][1]
for k,m in enumerate(msgs):
    s=[decode(x) for x in segs(m)]
    for j,x in enumerate(s):
        if need(x) and look(sd,ctx,bank,k,x) is None and x not in seen:
            pre=s[j-1] if j>0 else ''; nxt=s[j+1] if j+1<len(s) else ''
            pe=look(sd,ctx,bank,k,pre) or pre; ne=look(sd,ctx,bank,k,nxt) or nxt
            seen[x]=(k,pe[-40:],ne[:40])
for x,(k,p,n) in seen.items(): print(f'{x}\t#{k} [{p}] _ [{n}]')
print('N',len(seen),'msgs',len(msgs))
