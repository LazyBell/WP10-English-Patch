import sys; sys.path.insert(0,'.')
from fd import *
import collections
want={0x20a6a0bb,0xbbd39f2d,0xd34474d}
keys=[w.encode(e) for w in ['お疲れ様','押しかけ','ダイジェスト'] for e in ('cp932','utf-8','utf-16-le')]
hits=collections.Counter(); n=0; errs=0
for x in E:
    if x['tk'] not in want: continue
    try: out=unpack2(raw(x))
    except Exception as e: errs+=1; continue
    n+=1
    for k in keys:
        if k in out: hits[(hex(x['tk']),k)]+=1
print(n,errs,hits.most_common(20))
