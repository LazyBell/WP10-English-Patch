import numpy as np,sys
from PIL import Image,ImageDraw
sys.path.insert(0,'.')
from edit import *
t0=Image.open('t0_orig.png').convert('RGBA');t2=Image.open('t2_orig.png').convert('RGBA')
GOLD=((242,172,52,255),(150,100,42,255));GREEN=((70,220,145,255),(20,130,105,255))
def clear(im,box):
    a=np.array(im);x0,y0,x1,y1=box;a[y0:y1,x0:x1]=0;return Image.fromarray(a,'RGBA')
def big(im,box,text,grad,stroke_col):
    im=clear(im,box);L=text_layer(im.size,text,box,SERIF,None,stroke=4,stroke_fill=stroke_col,grad=grad)
    im.alpha_composite(L);return im
# 大成功 / 成功
t2=big(t2,(44,66,925,352),'GREAT\nSUCCESS',GOLD,(80,50,15,255))
t2=big(t2,(1017,57,1602,342),'SUCCESS',GREEN,(10,70,55,255))
t0=big(t0,(757,519,1584,788),'GREAT\nSUCCESS',GOLD,(80,50,15,255))
t0=big(t0,(894,85,1442,352),'SUCCESS',GREEN,(10,70,55,255))
t0.save('t0_new.png');t2.save('t2_new.png')
def recolor(im,box,cond,col):
    a=np.array(im);x0,y0,x1,y1=box;r=a[y0:y1,x0:x1].astype(int)
    m=cond(r);sub=a[y0:y1,x0:x1];sub[m]=col;a[y0:y1,x0:x1]=sub;return Image.fromarray(a,'RGBA'),m
WHITE=lambda r:(r[:,:,0]>170)&(r[:,:,1]>150)&(r[:,:,2]>150)&(r[:,:,3]>60)
for off in (0,444,888):
    box=(430+off,490,682+off,565)
    t2,_=recolor(t2,box,WHITE,(208,74,95,255))
    t2.alpha_composite(text_layer(t2.size,'TRUST UP!',(436+off,496,684+off,560),SERIF,(255,255,255,255),stroke=2,stroke_fill=(150,30,50,255),italic=0.18))
t2.save('t2_new.png')
