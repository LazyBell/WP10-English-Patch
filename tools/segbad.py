# compact view of messages: only variants containing ' - ' segments; shows JP+EN for all segs of those variants
import sys,os,json,re
sys.path.insert(0,os.path.expanduser('~/tools'))
exec(open(os.path.expanduser('~/tools/audit/remain.py')).read().split('D=json.load')[0])
from wmmbuild import segs
from wmm import decode
D=json.load(open(W+'pc/texts_dump.json',encoding='utf8'))
for key in sys.argv[1:]:
    b,k=map(int,key.split(':'));ss=[decode(x) for x in segs(pc[b][1][k])];tx=D[key]
    if len(ss)!=len(tx): continue
    flag=[isinstance(e,str) and e.startswith(' - ') for e in tx]
    if not any(flag): continue
    print('##',key)
    for i,(j,e) in enumerate(zip(ss,tx)):
        if flag[i] or (i+1<len(tx) and flag[i+1]) or (i>0 and flag[i-1]):
            print(('*' if flag[i] else ' '),i,j[:40],'=>',repr(e)[:110])
