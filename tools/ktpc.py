# KT RDB reader for the PC version (High / Middle sets)
import struct,os,zlib,ctypes
G=os.path.expanduser('~/mnt/Winning post 10 pc/Winning Post 10 2026/FPackages/')
VER=os.environ.get('WPVER','')
if VER=='104': G=os.path.expanduser('~/mnt/Winning Post 10 2026/FPackages/')
FALLBACK=[G]
_L=ctypes.CDLL('liblz4.so.1')
def lz4(src,n):
    dst=ctypes.create_string_buffer(n); r=_L.LZ4_decompress_safe(src,dst,len(src),n)
    if r<0: raise ValueError('lz4')
    return dst.raw[:r]
class Set:
    def __init__(s,name,base=None):
        s.dir=(base or G)+name+'/release/'
        d=open(s.dir+'root.rdx','rb').read(); s.rdx={}
        for i in range(0,len(d),8):
            idx,_,k=struct.unpack('<HHI',d[i:i+8]); s.rdx[idx]=k
        s.rb=open(s.dir+'root.rdb','rb').read()
        hs=struct.unpack('<I',s.rb[8:12])[0]; p=hs; s.ents=[]
        while p<len(s.rb):
            assert s.rb[p:p+8]==b'IDRK0000'
            es,ps,fs=struct.unpack('<QQQ',s.rb[p+8:p+32]); a,fk,tk,fl=struct.unpack('<IIII',s.rb[p+32:p+48])
            s.ents.append(dict(pos=p,es=es,fs=fs,a=a,fk=fk,tk=tk,fl=fl,extra=s.rb[p+48:p+es-ps],prm=s.rb[p+es-ps:p+es]))
            p+=(es+3)&~3
        s.hs=hs
    def loc(s,e):
        p=e['prm']; q=p[2:]
        if q[1:4]==b'\0\0\x80': return (q[0]<<32)|struct.unpack('<I',q[4:8])[0],struct.unpack('<I',q[8:12])[0],q[12]
        return struct.unpack('<I',q[:4])[0],struct.unpack('<I',q[4:8])[0],q[8]
    def raw(s,e,n=None):
        off,size,idx=s.loc(e); fn='0x%08x.fdata'%s.rdx[idx]; pth=s.dir+fn
        if not os.path.exists(pth):
            for fb in FALLBACK:
                q=fb+s.dir.rstrip('/').split('/')[-2]+'/release/'+fn
                if os.path.exists(q): pth=q;break
        f=open(pth,'rb'); f.seek(off); return f.read(n or size)
def payload(d):
    esz,psz,fsz=struct.unpack('<QQQ',d[8:32]); h=esz-psz; p=d[h:h+psz]
    if psz==fsz: return p
    ct=(struct.unpack('<I',d[44:48])[0]>>20)&0xf; out=bytearray(); i=0
    while i<len(p) and len(out)<fsz:
        cs=struct.unpack('<H',p[i:i+2])[0]; i+=10
        out+=(lz4(p[i:i+cs],min(16384,fsz-len(out))) if ct==5 else zlib.decompress(p[i:i+cs])); i+=cs
    return bytes(out)
