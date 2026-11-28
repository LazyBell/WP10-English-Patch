# Historic/Jump Training whiteboard 成功 card (texture fk of High 10732, 512x256; sprite list 52176 success_c 0-.453 x 0-.547) -> English art from uitex3
import sys,os,numpy as np
os.environ.setdefault('WPVER','104');sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc,ktpc2,g1t
from PIL import Image
G=os.path.expanduser(sys.argv[1] if len(sys.argv)>1 else '~/mnt/Desktop/WINNING POST 10 TRANSLATION/Winning Post 10 2026/FPackages/')
O=os.path.expanduser('~/work/uitex6/')
SU=Image.open(os.path.expanduser('~/work/uitex3/art_su.png')).convert('RGBA')
S=ktpc2.Set('High',G); FK=S.ents[10732]['fk'] if len(sys.argv)<3 else int(sys.argv[2],16)
print('fk',hex(FK)); open(O+'fk.txt','w').write(hex(FK))
for setn in ('High','Middle'):
    T=ktpc.Set(setn,base=G)
    e=[e for e in T.ents if e['fk']==FK and e['tk']==0xafbec60c][0];pl=ktpc.payload(T.raw(e));tt=g1t.parse(pl)[0];tt['lin']=True
    im=g1t.decode(pl,tt).convert('RGBA');w,h=im.size;im.save(O+f'{setn}_{FK:08x}_orig.png')
    a=np.array(im); x0,y0,x1,y1=0,0,int(round(0.453*w)),int(round(0.547*h))
    a[y0:y1,x0:x1]=0
    bw,bh=int((x1-x0)*0.92),int((y1-y0)*0.6)
    s=min(bw/SU.width,bh/SU.height);r=SU.resize((max(1,int(SU.width*s)),max(1,int(SU.height*s))),Image.LANCZOS)
    tmp=Image.fromarray(a);tmp.alpha_composite(r,(x0+((x1-x0)-r.width)//2,y0+((y1-y0)-r.height)//2))
    tmp.save(O+f'{setn}_{FK:08x}_new.png');print(setn,w,h)
