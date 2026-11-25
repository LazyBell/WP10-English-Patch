import sys,os,io,struct,json,numpy as np
sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc,g1t
from PIL import Image
W=os.path.expanduser('~/work/');NEWKEY=0xE7A10002;GT=0xafbec60c
R=json.load(open(W+'pc/dlc_tex_cands.json'))[:37]
def enc(img):
    b=io.BytesIO();img.save(b,'DDS',pixel_format='DXT5');d=b.getvalue();return d[128:128+(img.size[0]//4)*(img.size[1]//4)*16]
H=ktpc.Set('High')
FKS=[H.ents[r[0]]['fk'] for r in R]
PL={}
for n,r in enumerate(R):
    e=H.ents[r[0]];p=bytearray(ktpc.payload(H.raw(e)));t=g1t.parse(bytes(p))[0];assert t['fmt']==0x5b
    old=np.array(Image.open(W+f'pc/dlcban/b{n:02d}.png').convert('RGBA'));im=Image.open(W+f'pc/dlcban/b{n:02d}_en.png').convert('RGBA');new=np.array(im)
    bd=(old!=new).any(2).reshape(256,4,256,4).any((1,3))
    off=t['data'][0];sz=1024*1024
    ob=np.frombuffer(bytes(p[off:off+sz]),np.uint8).reshape(256,256,16).copy()
    nb=np.frombuffer(enc(im),np.uint8).reshape(256,256,16);ob[bd]=nb[bd];p[off:off+sz]=ob.tobytes()
    PL[e['fk']]=bytes(p)
def build(setname,outdir):
    S=ktpc.Set(setname);rb=S.rb
    fd=bytearray(b'PDRK0000'+struct.pack('<II',0x10,0));newrec={}
    rx=open(S.dir+'root.rdx','rb').read();newidx=len(rx)//8;assert newidx not in S.rdx and newidx<256
    for j,e in enumerate(S.ents):
        if e['tk']==GT and e['fk'] in PL:
            pl=PL[e['fk']];raw=S.raw(e,96);esz,psz,fsz=struct.unpack('<QQQ',raw[8:32]);hl=esz-psz;assert fsz==len(pl)
            hdr=bytearray(raw[:hl]);struct.pack_into('<QQQ',hdr,8,hl+len(pl),len(pl),len(pl));struct.pack_into('<I',hdr,44,0)
            while len(fd)%16: fd.append(0)
            pos=len(fd);fd+=hdr+pl
            prm=bytes([1,4])+struct.pack('<II',pos,hl+len(pl))+bytes([newidx,0,0])
            es=48+len(e['extra'])+len(prm)
            newrec[j]=b'IDRK0000'+struct.pack('<QQQ',es,len(prm),len(pl))+struct.pack('<IIII',e['a'],e['fk'],e['tk'],0x20000)+e['extra']+prm
    assert len(newrec)==len(PL),(setname,len(newrec))
    os.makedirs(outdir,exist_ok=True);open(outdir+'0x%08x.fdata'%NEWKEY,'wb').write(bytes(fd))
    open(outdir+'root.rdx','wb').write(rx+struct.pack('<HHI',newidx,0xffff,NEWKEY))
    outb=bytearray(rb[:S.hs])
    for k,x in enumerate(S.ents):
        rec=newrec.get(k,rb[x['pos']:x['pos']+x['es']])
        while len(outb)%4: outb.append(0)
        outb+=rec
    while len(outb)%4: outb.append(0)
    open(outdir+'root.rdb','wb').write(bytes(outb));print(setname,len(newrec),'fdata',len(fd),'idx',newidx)
for s in ('High','Middle'): build(s,W+f'pc_out/FPban/{s}/release/')
for s in ('High','Middle'):
    S=ktpc.Set(s,base=W+'pc_out/FPban/');S2=ktpc.Set(s);assert len(S.ents)==len(S2.ents)
    for e,e2 in zip(S.ents,S2.ents):
        assert e['fk']==e2['fk']
    # year entry still readable + banners
    for e in S.ents:
        if e['tk']==GT and e['fk'] in PL: assert ktpc.payload(S.raw(e))==PL[e['fk']]
    print(s,'verified')
