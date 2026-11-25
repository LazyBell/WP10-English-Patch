import sys,os
sys.path.insert(0,os.path.expanduser('~/tools'))
from fd import *
from hk import *
pats=[enc_kana('タイキシャトル'),enc_kana('セイウンスカイ'),'タイキシャトル'.encode('cp932'),'タイキシャトル'.encode('utf-16le')]
a,bnd=int(sys.argv[1]),int(sys.argv[2])
out=open(os.path.expanduser('~/work/fscan.txt'),'a')
print(len(E),file=out,flush=True)
for i,x in enumerate(E):
    if i<a or i>=bnd: continue
    if x['fs']>60_000_000: continue
    try:
        b=raw(x); d=unpack2(b)
    except Exception as ex:
        continue
    h=[k for k,p in enumerate(pats) if p in d]
    if h: print(i,hex(x['fk']),x['fs'],h,file=out,flush=True)
    if i%500==0: print('prog',i,file=out,flush=True)
print('done',file=out,flush=True)
