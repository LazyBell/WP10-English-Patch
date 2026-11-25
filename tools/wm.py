# show specific messages with English filled in where known
import sys,os,json
sys.path.insert(0,os.path.expanduser('~/tools'))
from wmmbuild import load,segs
from wmm import decode
from tr import look,need,L
sd=L('segdict.json',{}); ctx=L('ctx.json',{})
d,banks=load(); b=int(sys.argv[1]); msgs=banks[b][1]; mx=int(sys.argv[3]) if len(sys.argv)>3 else 600
for k in map(int,sys.argv[2].split(',')):
    s=[decode(x) for x in segs(msgs[k])]
    out=[]
    for x in s:
        e=look(sd,ctx,b,k,x) if need(x) else x
        out.append(e if e is not None else '【'+x+'】')
    print(f'{k}: '+' ¦ '.join(out)[:mx])
