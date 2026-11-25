import sys; sys.path.insert(0,'.')
from fd import *
import re,collections
skip={0xafbec60c,0x563bdef1,0x20a6a0bb,0x6fa91671,0xbbd39f2d,0xd34474d,0xbf6b52c7}
keys=[w.encode(e) for w in ['お疲れ様','押しかけ','ダイジェスト'] for e in ('cp932','utf-8','utf-16-le')]
hits=collections.Counter(); n=0
for x in E:
    if x['tk'] in skip: continue
    try: out=unpack2(raw(x))
    except Exception: continue
    n+=1
    for k in keys:
        if k in out: hits[(hex(x['tk']),k)]+=1
print(n,hits.most_common(20))
