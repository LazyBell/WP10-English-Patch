import sys,os,io,struct,json,numpy as np
sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc,g1t
from PIL import Image
W=os.path.expanduser('~/work/');NEWKEY=0xE7A10001
FK=0x2cb753f6
def enc(img):
    b=io.BytesIO();img.save(b,'DDS',pixel_format='DXT5');d=b.getvalue();return d[128:128+(img.size[0]//4)*(img.size[1]//4)*16]
def newpayload():
    p=bytearray(open(W+'pc/g_year_High.bin','rb').read());T=g1t.parse(bytes(p))
    for t in T:
        fn=W+f'pc/y{t["i"]}_en.png'
        if not os.path.exists(fn): continue
        im=Image.open(fn).convert('RGBA');assert im.size==(t['w'],t['h']) and t['fmt']==0x5b
        old=np.array(Image.open(W+f'pc/y{t["i"]}.png').convert('RGBA'));new=np.array(im)
        bd=(old!=new).any(2).reshape(t['h']//4,4,t['w']//4,4).any((1,3))
        off=t['data'][0];n=t['w']*t['h']
        ob=np.frombuffer(bytes(p[off:off+n]),np.uint8).reshape(t['h']//4,t['w']//4,16).copy()
        nb=np.frombuffer(enc(im),np.uint8).reshape(t['h']//4,t['w']//4,16)
        ob[bd]=nb[bd];p[off:off+n]=ob.tobytes()
    return bytes(p)
def build(setname,pl,outdir):
    S=ktpc.Set(setname);rb=S.rb
    j=[i for i,e in enumerate(S.ents) if e['fk']==FK and e['tk']==0xafbec60c];assert len(j)==1;j=j[0];e=S.ents[j]
    raw=S.raw(e,96);esz,psz,fsz=struct.unpack('<QQQ',raw[8:32]);hl=esz-psz
    assert fsz==len(pl)
    hdr=bytearray(raw[:hl]);struct.pack_into('<QQQ',hdr,8,hl+len(pl),len(pl),len(pl));struct.pack_into('<I',hdr,44,0)
    fd=bytearray(b'PDRK0000'+struct.pack('<II',0x10,0));pos=len(fd);fd+=hdr+pl
    os.makedirs(outdir,exist_ok=True);open(outdir+'0x%08x.fdata'%NEWKEY,'wb').write(bytes(fd))
    rx=open(S.dir+'root.rdx','rb').read();newidx=len(rx)//8;assert newidx not in S.rdx and newidx<256
    open(outdir+'root.rdx','wb').write(rx+struct.pack('<HHI',newidx,0xffff,NEWKEY))
    outb=bytearray(rb[:S.hs])
    for k,x in enumerate(S.ents):
        rec=rb[x['pos']:x['pos']+x['es']]
        if k==j:
            prm=bytes([1,4])+struct.pack('<II',pos,hl+len(pl))+bytes([newidx,0,0])
            es=48+len(x['extra'])+len(prm)
            rec=b'IDRK0000'+struct.pack('<QQQ',es,len(prm),len(pl))+struct.pack('<IIII',x['a'],x['fk'],x['tk'],0x20000)+x['extra']+prm
        while len(outb)%4: outb.append(0)
        outb+=rec
    while len(outb)%4: outb.append(0)
    open(outdir+'root.rdb','wb').write(bytes(outb));print(setname,'entry',j,'fdata',len(fd),'rdb',len(outb),len(rb),'idx',newidx)
if __name__=='__main__':
    pl=newpayload()
    for s in ('High','Middle'): build(s,pl,W+('pc_out104' if ktpc.VER else 'pc_out')+f'/FPackages/{s}/release/')
    # verify by re-reading
    for s in ('High','Middle'):
        S=ktpc.Set(s,base=W+('pc_out104' if ktpc.VER else 'pc_out')+'/FPackages/');S2=ktpc.Set(s)
        assert len(S.ents)==len(S2.ents)
        e=[x for x in S.ents if x['fk']==FK and x['tk']==0xafbec60c][0]
        assert ktpc.payload(S.raw(e))==pl;print(s,'verified')
