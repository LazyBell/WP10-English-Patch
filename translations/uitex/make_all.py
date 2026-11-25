import numpy as np,sys,os
from PIL import Image
sys.path.insert(0,'.')
from edit import *
from badges import radial_fix
src=open('make.py').read()
exec(src)   # builds t0 (big texts) and t2 (big texts + trust) and saves
t0=Image.open('t0_new.png').convert('RGBA')
BLUE=(30,110,200,255);RED=(200,40,50,255)
for txt,cx,cy,R in (('BONDED!',1342.5,1115,73),('BOND UP!',1508.5,1115,73),('RANK UP!',1906,1272,80)):
    t0=radial_fix(t0,cx,cy,R,0.42,xpad=1.0)
    t0.alpha_composite(text_layer(t0.size,txt,(int(cx-R*1.12),int(cy-R*0.32),int(cx+R*1.12),int(cy+R*0.32)),SANS,(255,255,255,255),stroke=5,stroke_fill=BLUE,italic=0.15))
for txt,cx,cy,R in (('EVOLVED',1947,948,66),('DONE',1946.5,1122,68)):
    t0=radial_fix(t0,cx,cy,R,0.36,xpad=1.0)
    t0.alpha_composite(text_layer(t0.size,txt,(int(cx-R*1.0),int(cy-R*0.3),int(cx+R*1.0),int(cy+R*0.3)),SANS,RED,stroke=5,stroke_fill=(255,255,255,255),italic=0.12))
# 実行中 stamp
a=np.array(t0);x0,y0,x1,y1=1688,1076,1806,1128;r=a[y0:y1,x0:x1].astype(int)
m=(r[:,:,2]>r[:,:,0]+40)&(r[:,:,3]>60);sub=a[y0:y1,x0:x1];sub[m]=(250,250,252,255);a[y0:y1,x0:x1]=sub;t0=Image.fromarray(a,'RGBA')
t0.alpha_composite(text_layer(t0.size,'ACTIVE',(1688,1078,1808,1126),SANS,(45,95,200,255),stroke=0,italic=0.12))
t0.save('t0_new.png')
for f,box in (('t0_new',(1250,860,2040,1370)),('t0_new',(740,60,1600,820)),('t2_new',(0,40,1700,620))):
    im=Image.open(f+'.png').crop(box);bg=Image.new('RGBA',im.size,(110,110,110,255));bg.alpha_composite(im)
    bg.convert('RGB').save(os.path.expanduser('~/mnt/Desktop/WINNING POST 10 TRANSLATION/_work_tpl/v_%s_%d.png'%(f,box[0])))
