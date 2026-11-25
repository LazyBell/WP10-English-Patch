import struct, sys, os
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
XCI = os.path.expanduser("~/mnt/Winning Post 10/Wwinning Post 10/Winning Post 10 2026 [01000AE025452000][v0][JP][Base].xci")
def keys():
    k={}
    for l in open(os.path.expanduser("~/mnt/eden/keys/prod.keys")):
        if '=' in l:
            a,b=l.split('=',1); k[a.strip()]=bytes.fromhex(b.strip())
    return k
K=keys()
f=open(XCI,'rb')
def rd(o,n): f.seek(o); return f.read(n)
def hfs0(off):
    h=rd(off,16); assert h[:4]==b'HFS0',h[:4]
    n,st=struct.unpack('<II',h[4:12])
    ent=rd(off+16,0x40*n); strs=rd(off+16+0x40*n,st)
    data=off+16+0x40*n+st; out={}
    for i in range(n):
        o,s,no=struct.unpack('<QQI',ent[i*0x40:i*0x40+20])
        name=strs[no:strs.index(b'\0',no)].decode()
        out[name]=(data+o,s)
    return out
def xts_dec(data,key,sector0=0):
    out=b''
    for i in range(0,len(data),0x200):
        c=Cipher(algorithms.AES(key),modes.XTS((sector0+i//0x200).to_bytes(16,'big'))).decryptor()
        out+=c.update(data[i:i+0x200])+c.finalize()
    return out
class NCA:
    def __init__(s,off,size):
        s.off=off; h=xts_dec(rd(off,0xC00),K['header_key']); s.h=h
        assert h[0x200:0x204]==b'NCA3',h[0x200:0x204]
        s.ctype=h[0x205]; s.tid=struct.unpack('<Q',h[0x210:0x218])[0]
        gen=max(h[0x206],h[0x220]); idx=gen-1 if gen else 0
        kak=K['key_area_key_application_%02x'%idx]
        ka=h[0x300:0x340]
        e=Cipher(algorithms.AES(kak),modes.ECB()).decryptor()
        s.keys=[e.update(ka[i*16:i*16+16]) for i in range(4)]
        s.rights=h[0x230:0x240]
        s.secs=[]
        for i in range(4):
            st,en=struct.unpack('<II',h[0x240+i*16:0x248+i*16])
            if en==0: continue
            fh=h[0x400+i*0x200:0x600+i*0x200]
            s.secs.append(dict(i=i,start=st*0x200,end=en*0x200,fstype=fh[2],enc=fh[4],fh=fh,ctr=struct.unpack('<Q',fh[0x140:0x148])[0]))
    def read(s,sec,o,n):
        # o relative to section start
        a=sec['start']+o; base=a&~0xF; pre=a-base; ln=(pre+n+15)&~0xF
        d=rd(s.off+base,ln)
        if sec['enc']==3:
            iv=sec['ctr'].to_bytes(8,'big')+(base>>4).to_bytes(8,'big')
            c=Cipher(algorithms.AES(s.keys[2]),modes.CTR(iv)).decryptor(); d=c.update(d)
        return d[pre:pre+n]
def romfs(n,sec):
    lvl=sec['fh'][0x8:]
    assert lvl[:4]==b'IVFC'
    l6=0x10+5*0x18
    base=struct.unpack('<Q',lvl[l6:l6+8])[0]
    hdr=n.read(sec,base,0x50); v=struct.unpack('<10Q',hdr)
    dmo,dms,fmo,fms,doff=v[3],v[4],v[7],v[8],v[9]
    dm=n.read(sec,base+dmo,dms); fm=n.read(sec,base+fmo,fms)
    files=[]
    def walkdir(off,path):
        p,sib,cd,cf,hs,nl=struct.unpack('<6I',dm[off:off+24]); name=dm[off+24:off+24+nl].decode('utf8','replace')
        here=path+'/'+name if off else ''
        fo=cf
        while fo!=0xFFFFFFFF:
            fp,fs_,do,sz,fh_,fl=struct.unpack('<IIQQII',fm[fo:fo+32])
            files.append((here+'/'+fm[fo+32:fo+32+fl].decode('utf8','replace'),base+doff+do,sz)); fo=fs_
        c=cd
        while c!=0xFFFFFFFF:
            walkdir(c,here); c=struct.unpack('<I',dm[c+4:c+8])[0]
    walkdir(0,'')
    return files
