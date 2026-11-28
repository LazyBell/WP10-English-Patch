# UI texture patch 6: Historic/Jump Training whiteboard 成功 card (fk 0x2fab0e27) -> English (art from uitex6/make.py)
# Builds new fdata 0xE7A10003 + root.rdb/rdx on top of the INSTALLED FPackages (keeps year/banner patches).
import sys,os,io,struct,numpy as np
os.environ.setdefault('WPVER','104')
sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc,g1t
from PIL import Image
W=os.path.expanduser('~/work/');NEWKEY=0xE7A10008
GAME=os.path.expanduser(sys.argv[1] if len(sys.argv)>1 else '~/mnt/Desktop/WINNING POST 10 TRANSLATION/Winning Post 10 2026/FPackages/')
OUTD=os.environ.get('UIOUT',W+'pc_out104/FPui6/')
FKS=(0x2fab0e27,)
CUR={}
def enc(img):
    b=io.BytesIO();img.save(b,'DDS',pixel_format='DXT5');d=b.getvalue();return d[128:128+(img.size[0]//4)*(img.size[1]//4)*16]
def patched_payload(p,setname,fk):
    EDIT={0:W+'uitex6/%s_%08x_new.png'%(setname,fk)};ORIG={0:W+'uitex6/%s_%08x_orig.png'%(setname,fk)}
    p=bytearray(p);T=g1t.parse(bytes(p))
    for ti,fn in EDIT.items():
        t=T[ti];assert t['fmt']==0x5b,(ti,hex(t['fmt']))
        w,h=t['w'],t['h'];old=np.array(Image.open(ORIG[ti]).convert('RGBA'));im=Image.open(fn).convert('RGBA');new=np.array(im)
        assert old.shape[:2]==(h,w),(old.shape,w,h)
        bd=(old!=new).any(2).reshape(h//4,4,w//4,4).any((1,3))
        off=t['data'][0];sz=w*h
        ob=np.frombuffer(bytes(p[off:off+sz]),np.uint8).reshape(h//4,w//4,16).copy()
        nb=np.frombuffer(enc(im),np.uint8).reshape(h//4,w//4,16);ob[bd]=nb[bd];p[off:off+sz]=ob.tobytes()
        print(' tex',ti,'blocks changed',int(bd.sum()))
    return bytes(p)
def build(setname):
    S=ktpc.Set(setname,base=GAME);rb=S.rb;outdir=OUTD+setname+'/release/'
    rx=open(S.dir+'root.rdx','rb').read();newidx=len(rx)//8;assert newidx not in S.rdx and newidx<256
    assert NEWKEY not in S.rdx.values(),'already patched'
    fd=bytearray(b'PDRK0000'+struct.pack('<II',0x10,0));newrec={}
    for j,e in enumerate(S.ents):
        if e['fk'] not in FKS or e['tk']!=0xafbec60c: continue
        raw=S.raw(e);pl=patched_payload(ktpc.payload(raw),setname,e['fk']);CUR[e['fk']]=len(pl)
        esz,psz,fsz=struct.unpack('<QQQ',raw[8:32]);hl=esz-psz;assert fsz==len(pl)
        hdr=bytearray(raw[:hl]);struct.pack_into('<QQQ',hdr,8,hl+len(pl),len(pl),len(pl));struct.pack_into('<I',hdr,44,0)
        while len(fd)%16: fd.append(0)
        pos=len(fd);fd+=hdr+pl
        prm=bytes([1,4])+struct.pack('<II',pos,hl+len(pl))+bytes([newidx,0,0])
        es=48+len(e['extra'])+len(prm)
        newrec[j]=b'IDRK0000'+struct.pack('<QQQ',es,len(prm),len(pl))+struct.pack('<IIII',e['a'],e['fk'],e['tk'],0x20000)+e['extra']+prm
    assert len(newrec)==1,(setname,len(newrec))
    os.makedirs(outdir,exist_ok=True);open(outdir+'0x%08x.fdata'%NEWKEY,'wb').write(bytes(fd))
    open(outdir+'root.rdx','wb').write(rx+struct.pack('<HHI',newidx,0xffff,NEWKEY))
    outb=bytearray(rb[:S.hs])
    for k,x in enumerate(S.ents):
        rec=newrec.get(k,rb[x['pos']:x['pos']+x['es']])
        while len(outb)%4: outb.append(0)
        outb+=rec
    while len(outb)%4: outb.append(0)
    open(outdir+'root.rdb','wb').write(bytes(outb));print(setname,'fdata',len(fd),'idx',newidx)
    # verify
    ktpc.FALLBACK=[GAME];S2=ktpc.Set(setname,base=OUTD);assert len(S2.ents)==len(S.ents)
    for fk in FKS:
        e2=[e for e in S2.ents if e['fk']==fk and e['tk']==0xafbec60c][0];assert len(ktpc.payload(S2.raw(e2)))==CUR[fk]
for s in ('High','Middle'): build(s)
