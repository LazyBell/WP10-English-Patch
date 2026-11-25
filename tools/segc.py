# compact: per msg, flagged segs: idx | prevEN | JP | EN | nextEN
import sys,os,json
sys.path.insert(0,os.path.expanduser('~/tools'))
exec(open(os.path.expanduser('~/tools/audit/remain.py')).read().split('D=json.load')[0])
from wmmbuild import segs
from wmm import decode
D=json.load(open(W+'pc/texts_dump.json',encoding='utf8'))
M=json.load(open('/tmp/remain_msgs.json'))
b=sys.argv[1];a=int(sys.argv[2]);n=int(sys.argv[3])
for key in M[b][a:a+n]:
    bb,k=map(int,key.split(':'));ss=[decode(x) for x in segs(pc[bb][1][k])];tx=D[key]
    if len(ss)!=len(tx): continue
    out=[];seen=set()
    for i,e in enumerate(tx):
        if isinstance(e,str) and e.startswith(' - '):
            sig=(ss[i][:6],e)
            if sig in seen: continue
            seen.add(sig)
            p=tx[i-1] if i else '';q=tx[i+1] if i+1<len(tx) else ''
            out.append(f' {i}|{(p or "")[-30:]!r}|{ss[i][:22]}|{e[:90]!r}|{(q or "")[:30]!r}')
    if out: print('#'+key);print('\n'.join(out))
