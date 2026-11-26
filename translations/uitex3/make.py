# result-card text textures: 42360 (大成功/成功) and 28914 (信頼UP) -> English, art cut from our 27212 tex2
import sys,os,numpy as np
os.environ.setdefault('WPVER','104');sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc,ktpc2,g1t
from PIL import Image
G=os.path.expanduser('~/mnt/Desktop/WINNING POST 10 TRANSLATION/Winning Post 10 2026/FPackages/')
O=os.path.expanduser('~/work/uitex3/')
S=ktpc2.Set('High',G);p=ktpc2.payload(S.raw(S.ents[27212]));t=g1t.parse(p)[2];t['lin']=True
src=g1t.decode(p,t).convert('RGBA')
def crop(box):
    im=src.crop(box);a=np.array(im)[...,3];ys,xs=np.nonzero(a>8);return im.crop((xs.min(),ys.min(),xs.max()+1,ys.max()+1))
GS=crop((0,0,1000,420)); SU=crop((990,100,1650,330)); TR=crop((280,400,750,640))
GS.save(O+'art_gs.png');SU.save(O+'art_su.png');TR.save(O+'art_tr.png');print(GS.size,SU.size,TR.size)
FK={0xbb6f3b74:[((0,0,0.625,0.2734),GS),((0,0.2773,0.4531,0.5508),SU)], 0x8030297d:[((0,0,0.5781,0.25),TR)]}
for setn in ('High','Middle'):
    T=ktpc.Set(setn,base=G)
    for fk,jobs in FK.items():
        e=[e for e in T.ents if e['fk']==fk and e['tk']==0xafbec60c][0];pl=ktpc.payload(T.raw(e));tt=g1t.parse(pl)[0];tt['lin']=True
        im=g1t.decode(pl,tt).convert('RGBA');w,h=im.size;im.save(O+f'{setn}_{fk:08x}_orig.png')
        a=np.array(im)
        for (u0,v0,u1,v1),art in jobs:
            x0,y0,x1,y1=int(u0*w),int(v0*h),int(round(u1*w)),int(round(v1*h))
            a[y0:y1,x0:x1]=0
            bw,bh=(x1-x0)-int(0.06*(x1-x0)),(y1-y0)-int(0.1*(y1-y0))
            s=min(bw/art.width,bh/art.height);r=art.resize((max(1,int(art.width*s)),max(1,int(art.height*s))),Image.LANCZOS)
            px=x0+((x1-x0)-r.width)//2;py=y0+((y1-y0)-r.height)//2
            tmp=Image.fromarray(a);tmp.alpha_composite(r,(px,py));a=np.array(tmp)
        Image.fromarray(a).save(O+f'{setn}_{fk:08x}_new.png');print(setn,hex(fk),w,h)
