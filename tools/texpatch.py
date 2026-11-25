# patch textures in a G1T entry and produce new fdata + root.rdb/root.rdx in mod folder
import sys,os,io,struct,json,numpy as np
sys.path.insert(0,os.path.expanduser('~/tools'))
import kt,g1t,rdb
from PIL import Image
W=os.path.expanduser('~/work/')
MOD=os.path.expanduser('~/mnt/eden/load/01000AE025452000/English/romfs/FPackages/release/')
NEWKEY=0xE7A10001
def encode_blocks(img,bpp=16):
    b=io.BytesIO(); img.save(b,'DDS',pixel_format='DXT5'); d=b.getvalue()
    hb,wb=(img.size[1]+3)//4,(img.size[0]+3)//4
    return np.frombuffer(d[128:128+hb*wb*16],np.uint8).reshape(hb,wb,16)
def patch_tex(p,t,newimg):
    name,bpp=g1t.FMT[t['fmt']]; assert name=='DXT5'
    w,h=t['w'],t['h']; wb,hb=(w+3)//4,(h+3)//4; bh=g1t.bh_for(hb)
    off=t['data'][0]; sz=g1t.swz_size(wb,hb,bpp,bh)
    orig=g1t.deswizzle(p[off:off+sz],wb,hb,bpp,bh).copy()
    old=np.array(g1t.decode(p,t).convert('RGBA')); new=np.array(newimg.convert('RGBA'))
    diff=(old!=new).any(2)
    bd=diff.reshape(hb,4,wb,4).any((1,3))
    enc=encode_blocks(newimg.convert('RGBA'))
    orig[bd]=enc[bd]
    print('blocks changed',int(bd.sum()))
    return p[:off]+g1t.swizzle(orig,bh)+p[off+sz:]
def build(entries):
    """entries: {rdb_index: new_g1t_payload}"""
    cnt,out=rdb.rdb('root.rdb')
    rb=open(os.path.expanduser('~/tools/../work/FPackages/release/root.rdb'),'rb').read() if False else open(W+'FPackages/release/root.rdb','rb').read()
    fd=bytearray(b'PDRK0000'+struct.pack('<II',0x10,0))
    newloc={}
    for j,pl in entries.items():
        e=out[j]; off,size,idx=kt.loc(e)
        raw=kt.readfile(kt.fpath(idx),off,96)
        esz,psz,fsz=struct.unpack('<QQQ',raw[8:32]); hl=esz-psz
        hdr=bytearray(raw[:hl])
        struct.pack_into('<QQQ',hdr,8,hl+len(pl),len(pl),len(pl))
        struct.pack_into('<I',hdr,44,0)  # flags: uncompressed
        while len(fd)%16: fd.append(0)
        pos=len(fd); fd+=hdr+pl; newloc[j]=(pos,hl+len(pl))
    os.makedirs(MOD,exist_ok=True)
    open(MOD+'0x%08x.fdata'%NEWKEY,'wb').write(bytes(fd))
    # rdx
    rx=open(W+'FPackages/release/root.rdx','rb').read()
    n=len(rx)//8; newidx=n
    rx+=struct.pack('<HHI',newidx,0xffff,NEWKEY)
    open(MOD+'root.rdx','wb').write(rx)
    # rdb rebuild
    hs=struct.unpack('<I',rb[8:12])[0]
    outb=bytearray(rb[:hs])
    for k,e in enumerate(out):
        rec=rb[e['pos']:e['pos']+e['es']]
        if k in newloc:
            pos,sz=newloc[k]
            extra=e['extra']
            prm=bytes([1,4])+struct.pack('<II',pos,sz)+bytes([newidx,0,0])
            fs=len(entries[k])
            es=48+len(extra)+len(prm)
            rec=b'IDRK0000'+struct.pack('<QQQ',es,len(prm),fs)+struct.pack('<IIII',e['a'],e['fk'],e['tk'],0x20000)+extra+prm
        while len(outb)%4: outb.append(0)
        outb+=rec
    while len(outb)%4: outb.append(0)
    open(MOD+'root.rdb','wb').write(bytes(outb))
    print('fdata',len(fd),'rdb',len(outb),len(rb),'newidx',newidx)
if __name__=='__main__':
    p=open(W+'g9992.bin','rb').read(); T=g1t.parse(p)
    p2=patch_tex(p,T[11],Image.open(W+'y11_en.png'))
    # verify decode
    g1t.decode(p2,g1t.parse(p2)[11]).convert('RGB').resize((1024,512)).save(os.path.expanduser('~/mnt/eden/_tmp/y11_check.jpg'))
    build({9992:p2})

def patch_tex_full(p,t,newimg,newfmt=0x62):
    """re-encode all mips as DXT5 and set format byte (for BC7 sources)"""
    name,bpp=g1t.FMT[t['fmt']]; assert bpp==16
    w,h=t['w'],t['h']; off=t['data'][0]; out=bytearray(p)
    img=newimg.convert('RGBA'); mips=max(1,t['mips'])
    for L in range(mips):
        wb,hb=(w+3)//4,(h+3)//4; bh=g1t.bh_for(hb); sz=g1t.swz_size(wb,hb,bpp,bh)
        im=img.resize((wb*4,hb*4),Image.LANCZOS) if (wb*4,hb*4)!=img.size else img
        if (w,h)!=(wb*4,hb*4):
            c=Image.new('RGBA',(wb*4,hb*4)); c.paste(img.resize((w,h),Image.LANCZOS),(0,0)); im=c
        blk=encode_blocks(im)
        out[off:off+sz]=g1t.swizzle(blk,bh); off+=sz
        w=max(1,w//2); h=max(1,h//2)
    out[t['to']+1]=newfmt
    return bytes(out)
