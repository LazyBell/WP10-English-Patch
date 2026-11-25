import struct,io,numpy as np
from PIL import Image
FMT={0x63:('ATI1',8),0x5c:('ATI1',8),0x64:('ATI2',16),0x5d:('ATI2',16),0x0a:('RGBA',4),0x5b:('DXT5',16),0x62:('DXT5',16),0x66:('BC7',16),0x5f:('BC7',16),0x59:('DXT1',8),0x60:('DXT1',8),0x5a:('DXT3',16),0x61:('DXT3',16),0x06:('DXT1',8),0x07:('DXT3',16),0x08:('DXT5',16)}
def p2(n):
    r=1
    while r<n: r*=2
    return r
def bh_for(hb):
    b=p2((hb+7)//8)
    return max(1,min(16,b))
def swz_size(wb,hb,bpp,bh):
    wg=(wb*bpp+63)//64
    return wg*512*bh*((hb+8*bh-1)//(8*bh))
def deswizzle(data,wb,hb,bpp,bh):
    wg=(wb*bpp+63)//64
    x=np.arange(wb)[None,:]; y=np.arange(hb)[:,None]
    xb=x*bpp
    gob=(y//(8*bh))*512*bh*wg + (xb//64)*512*bh + ((y%(8*bh))//8)*512
    addr=gob+((xb%64)//32)*256+((y%8)//2)*64+((xb%32)//16)*32+(y%2)*16+(xb%16)
    a=np.frombuffer(data,np.uint8)
    idx=(addr[...,None]+np.arange(bpp)).reshape(-1)
    return a[idx].reshape(hb,wb,bpp)
def swizzle(blocks,bh):  # blocks: (hb,wb,bpp) array -> bytes
    hb,wb,bpp=blocks.shape; wg=(wb*bpp+63)//64
    out=np.zeros(swz_size(wb,hb,bpp,bh),np.uint8)
    x=np.arange(wb)[None,:]; y=np.arange(hb)[:,None]; xb=x*bpp
    gob=(y//(8*bh))*512*bh*wg + (xb//64)*512*bh + ((y%(8*bh))//8)*512
    addr=gob+((xb%64)//32)*256+((y%8)//2)*64+((xb%32)//16)*32+(y%2)*16+(xb%16)
    idx=(addr[...,None]+np.arange(bpp)).reshape(-1)
    out[idx]=blocks.reshape(-1); return out.tobytes()
def parse(p):
    assert p[:4]==b'GT1G'
    fsz,hs,cnt=struct.unpack('<III',p[8:20])
    offs=struct.unpack('<%dI'%cnt,p[hs:hs+4*cnt])
    T=[]
    for k,o in enumerate(offs):
        to=hs+o; t=p[to:to+8]
        mips=t[0]>>4; fmt=t[1]; w=1<<(t[2]&15); h=1<<(t[2]>>4)
        ext=t[7]; hl=8; lin=False
        if ext:
            exsz=struct.unpack('<I',p[to+8:to+12])[0]; hl=8+exsz
            if exsz>=0x14:
                W,H=struct.unpack('<II',p[to+8+0xc:to+8+0x14])
                if 0<W<=16384 and 0<H<=16384:
                    lin=(W,H)!=(w,h); w,h=W,H
        end=hs+offs[k+1] if k+1<cnt else fsz
        T.append(dict(i=k,to=to,hl=hl,mips=mips,fmt=fmt,w=w,h=h,data=(to+hl,end),lin=lin))
    return T
def dds(w,h,fourcc,blk):
    if fourcc=='BC7':
        hdr=struct.pack('<4sIIIIIII44sIIIIIIIIIIIII','DDS '.encode(),124,0x1007,h,w,len(blk),0,1,b'\0'*44,32,4,b'DX10'[0]|b'DX10'[1]<<8|b'DX10'[2]<<16|b'DX10'[3]<<24,0,0,0,0,0,0x1000,0,0,0,0)
        hdr+=struct.pack('<IIIII',98,3,0,1,0)
    else:
        cc=fourcc.encode(); cc=cc[0]|cc[1]<<8|cc[2]<<16|cc[3]<<24
        hdr=struct.pack('<4sIIIIIII44sIIIIIIIIIIIII','DDS '.encode(),124,0x1007,h,w,len(blk),0,1,b'\0'*44,32,4,cc,0,0,0,0,0,0x1000,0,0,0,0)
    return hdr+blk
def decode(p,t,level=0):
    if t['fmt'] in (0x0a,0x01,0x00):
        w,h=t['w'],t['h']; off=t['data'][0]
        if t.get('lin'): a=np.frombuffer(p[off:off+w*h*4],np.uint8).reshape(h,w,4)
        else:
            bh=bh_for(h); a=deswizzle(p[off:off+swz_size(w,h,4,bh)],w,h,4,bh)
        return Image.fromarray(np.ascontiguousarray(a),'RGBA')
    name,bpp=FMT[t['fmt']]
    off=t['data'][0]; w,h=t['w'],t['h']
    for L in range(level+1):
        wb,hb=(w+3)//4,(h+3)//4; bh=bh_for(hb)
        sz=wb*hb*bpp if t.get('lin') else swz_size(wb,hb,bpp,bh)
        if L==level:
            blocks=np.frombuffer(p[off:off+sz],np.uint8).reshape(hb,wb,bpp) if t.get('lin') else deswizzle(p[off:off+sz],wb,hb,bpp,bh)
            im=Image.open(io.BytesIO(dds(wb*4,hb*4,name,blocks.tobytes()))); im.load()
            return im.crop((0,0,w,h))
        off+=sz; w=max(1,w//2); h=max(1,h//2)
