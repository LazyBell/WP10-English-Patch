import sys,os,glob,struct,re,json
sys.path.insert(0,os.path.expanduser('~/tools'))
from hk import *
W=os.path.expanduser('~/work/')
# (count,recsize) -> offset of quad [S17][S17][R9][R9]
QUAD={(2047,56):4,(151,72):8,(821,68):8,(117,96):16,(33,60):8,(49,140):64,(4501,72):20}
def is_sj(f):
    s=f.split(b'\0')[0]
    if not s: return True
    try: s.decode('cp932'); return all(c==0 for c in f[len(s):])
    except: return False
def is_rd(f):
    s=f.split(b'\0')[0]
    return all(c<=0x56 or c==0xfe for c in s) and all(c==0 for c in f[len(s):])
def tables():
    out=[]
    for p in sorted(glob.glob(W+'unb3/*.bin')):
        b=open(p,'rb').read(12)
        if b[:4]!=b'8MAG': continue
        k=struct.unpack_from('<II',b,4)
        if k in QUAD: out.append((int(os.path.basename(p)[:4]),k,QUAD[k]))
    return out
def records():
    for i,(n,rs),q in tables():
        d=open(W+f'unb3/{i:04d}.bin','rb').read()
        for k in range(n):
            a=12+k*rs+q; f=d[a:a+52]
            if len(f)<52: break
            s1,s2,r1,r2=f[:17],f[17:34],f[34:43],f[43:52]
            if not (is_sj(s1) and is_sj(s2) and is_rd(r1) and is_rd(r2)): continue
            if not s1.strip(b'\0') and not s2.strip(b'\0'): continue
            yield i,a,s1,s2,r1,r2
