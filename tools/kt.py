import sys,os,struct,pickle
sys.path.insert(0,os.path.expanduser('~/tools'))
os.chdir(os.path.expanduser('~/tools'))
from nx import *
import rdb
fl=pickle.load(open(os.path.expanduser('~/tools/files.pkl'),'rb'))
FL={p:(o,s) for p,o,s in fl}
root=hfs0(struct.unpack('<Q',rd(0x130,8))[0]); sec=hfs0(root['secure'][0])
N=NCA(*sec['96c6a6d3cb8bc99b5ea2de8bce80b681.nca'])
S=[x for x in N.secs if x['fstype']==0][0]
RDX=rdb.rdx('root.rdx')
def readfile(path,off,n):
    o,s=FL[path]; return N.read(S,o+off,n)
def loc(e):
    p=e['prm']; assert p[0]==1
    q=p[2:]
    if q[1:4]==b'\0\0\x80':
        off=(q[0]<<32)|struct.unpack('<I',q[4:8])[0]; size=struct.unpack('<I',q[8:12])[0]; idx=q[12]
    else:
        off=struct.unpack('<I',q[:4])[0]; size=struct.unpack('<I',q[4:8])[0]; idx=q[8]
    return off,size,idx
def fpath(idx): return '/FPackages/release/0x%08x.fdata'%RDX[idx]
def raw(e):
    off,size,idx=loc(e); return readfile(fpath(idx),off,size)
def lz4dec(src,limit):
    i=0; out=bytearray(); n=len(src)
    while i<n and len(out)<limit:
        t=src[i]; i+=1; ll=t>>4
        if ll==15:
            while True:
                b=src[i]; i+=1; ll+=b
                if b!=255: break
        out+=src[i:i+ll]; i+=ll
        if len(out)>=limit: break
        off=src[i]|(src[i+1]<<8); i+=2
        ml=t&15
        if ml==15:
            while True:
                b=src[i]; i+=1; ml+=b
                if b!=255: break
        ml+=4
        if off==0 or off>len(out): raise ValueError('lz4')
        if off>=ml: out+=out[-off:len(out)-off+ml]
        else:
            for k in range(ml): out.append(out[-off])
    return i,bytes(out)
import ctypes
_L=ctypes.CDLL('liblz4.so.1')
def lz4fast(src,n):
    dst=ctypes.create_string_buffer(n)
    r=_L.LZ4_decompress_safe(src,dst,len(src),n)
    if r<0: raise ValueError('lz4 c')
    return dst.raw[:r]
def payload(d, limit=None):
    esz,psz,fsz=struct.unpack('<QQQ',d[8:32]); h=esz-psz; p=d[h:h+psz]
    if psz==fsz: return p[:limit] if limit else p
    ct=(struct.unpack('<I',d[44:48])[0]>>20)&0xf
    out=bytearray(); i=0
    while i<len(p) and len(out)<(limit or fsz):
        cs=struct.unpack('<H',p[i:i+2])[0]; i+=10
        o=(lz4fast(p[i:i+cs], min(16384,fsz-len(out))) if ct==5 else __import__('zlib').decompress(p[i:i+cs])); out+=o; i+=cs
    return bytes(out)
def head(e,n=96):
    off,size,idx=loc(e); d=readfile(fpath(idx),off,min(size,20000))
    esz,psz,fsz=struct.unpack('<QQQ',d[8:32]); h=esz-psz; p=d[h:]
    if psz==fsz: return p[:n]
    cs=struct.unpack('<H',p[:2])[0]
    return lz4dec(p[10:10+cs],n)[1]

SRX=rdb.rdx('system.rdx')
def sraw(e):
    off,size,idx=loc(e); return readfile('/FPackages/release/0x%08x.fdata'%SRX[idx],off,size)
