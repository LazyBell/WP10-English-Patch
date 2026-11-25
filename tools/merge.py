import sys,os,json
sys.path.insert(0,os.path.expanduser('~/tools'))
from wmmbuild import load,segs
from wmm import decode
from tr import risky,L,W
b,s0,s1=map(int,sys.argv[1:4])
n=json.load(open(W+'sd_new.json'))
bad=[k for k,v in n.items() if any(ord(c)>126 for c in v)]
if bad: print('NONASCII',bad); sys.exit(1)
sd=L('segdict.json',{}); ctx=L('ctx.json',{})
msgs=load()[1][b][1]; clash=[]; nctx=0
import re
for k,v in list(n.items()):
    m=re.match(r'^(\d+)\|(.*)$',k,re.S)
    if m:
        ctx[f'{b}:{m.group(1)}|{m.group(2)}']=v; nctx+=1; del n[k]
for k,v in n.items():
    if risky(k):
        for i in range(s0,min(s1,len(msgs))):
            if k in [decode(x) for x in segs(msgs[i])]:
                key=f'{b}:{i}|{k}'
                if key not in ctx: ctx[key]=v; nctx+=1
    else:
        if k in sd and sd[k]!=v: clash.append(k)
        else: sd[k]=v
json.dump(sd,open(W+'segdict.json','w'),ensure_ascii=False)
json.dump(ctx,open(W+'ctx.json','w'),ensure_ascii=False)
print('clash',clash,'ctx+',nctx,'sd',len(sd))
