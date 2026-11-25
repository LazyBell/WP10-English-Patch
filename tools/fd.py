from nx import *
from rdb import *
import pickle
fl=pickle.load(open(os.path.expanduser('~/tools/files.pkl'),'rb'))
FL={p:(o,s) for p,o,s in fl}
root=hfs0(struct.unpack('<Q',rd(0x130,8))[0]); sec=hfs0(root['secure'][0])
N=NCA(*sec['96c6a6d3cb8bc99b5ea2de8bce80b681.nca'])
S=[x for x in N.secs if x['fstype']==0][0]
def rfile(path,off,n):
    o,s=FL[path]; return N.read(S,o+off,n)
from lz4b import lz4_block
M=rdx('root.rdx'); CNT,E=rdb('root.rdb')
def loc(x):
    p=x['prm']
    if len(p)==13: off,sz=struct.unpack('<II',p[2:10]); idx=struct.unpack('<H',p[10:12])[0]
    else: off,sz=struct.unpack('<II',p[6:14]); idx=struct.unpack('<H',p[14:16])[0]
    return idx,off,sz
def raw(x):
    idx,off,sz=loc(x); return rfile('/FPackages/release/0x%08x.fdata'%M[idx],off,sz)
def unpack(b):
    hs=struct.unpack('<Q',b[8:16])[0]-struct.unpack('<Q',b[16:24])[0]; d=b[hs:]; fs=struct.unpack('<Q',b[24:32])[0]
    i=0; out=b''; chunks=[]
    while i+10<=len(d) and len(out)<fs:
        cs=struct.unpack('<H',d[i:i+2])[0]; h=d[i+2:i+10]; blk=d[i+10:i+10+cs]
        out+=lz4_block(blk); chunks.append(cs); i+=10+cs
    return out,fs,chunks,i,len(d)
import zlib as _z
def unpack2(b):
    es,ds,fs=struct.unpack('<QQQ',b[8:32]); hs=es-ds; fl=struct.unpack('<I',b[44:48])[0]; d=b[hs:]
    out=b''; i=0
    while i+10<=len(d) and len(out)<fs:
        cs=struct.unpack('<H',d[i:i+2])[0]; blk=d[i+10:i+10+cs]
        if blk[:1]==b'\x78':
            try: out+=_z.decompress(blk)
            except Exception: out+=blk
        else:
            try: out+=lz4_block(blk)
            except Exception: out+=blk
        i+=10+cs
    return out
