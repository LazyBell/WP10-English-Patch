import numpy as np,cv2,os,sys
from PIL import Image,ImageDraw,ImageFont
sys.path.insert(0,os.path.expanduser('~/work/uitex')); from edit import fit_font,SANS
SH=os.path.expanduser('~/mnt/Desktop/WINNING POST 10 TRANSLATION/_work_tpl/shots/')
im=np.array(Image.open(SH+'atlas17515.png').convert('RGBA'))
orig=im.copy()
GREY=(64,64,64);GREEN=(40,104,24)
FL=[((1332,738),'BL',GREY),((1480,738),'BL',GREEN),((1628,738),'L',GREY),((1776,738),'L',GREEN),((1924,738),'P',GREY),((2472,774),'P',GREEN),
    ((2620,774),'M',GREY),((2768,774),'M',GREEN),((2072,790),'B',GREY),((2220,790),'B',GREEN)]
W,H=144,84
for (x,y),txt,ac in FL:
    r=im[y:y+H,x:x+W].astype(int)
    col=r[...,:3]; a=r[...,3]
    d=np.abs(col-np.array(ac)).sum(2)
    arrow=(d<40)&(a>100)
    pts=cv2.findNonZero(arrow.astype(np.uint8)); hull=cv2.convexHull(pts)
    m=np.zeros((H,W),np.uint8); cv2.fillConvexPoly(m,hull,255)
    aa=int(np.median(a[arrow]))
    new=np.zeros((H,W,4),np.uint8)
    # supersampled hull for smooth edges
    big=np.zeros((H*4,W*4),np.uint8); cv2.fillConvexPoly(big,(hull*4+2).astype(np.int32),255)
    mm=cv2.resize(big,(W,H),interpolation=cv2.INTER_AREA)
    new[...,:3]=ac; new[...,3]=(mm.astype(int)*aa//255).astype(np.uint8)
    L=Image.fromarray(new,'RGBA')
    # text box: arrow body right of the point
    ys,xs=np.nonzero(m); x0,x1=xs.min(),xs.max(); y0,y1=ys.min(),ys.max()
    bx0=x0+int((x1-x0)*0.30); box=(bx0,y0+4,x1-2,y1-4)
    if ac==GREY: fill=(200,200,200,255); sc=(30,30,30,255)
    else: fill=(250,250,250,255); sc=(20,60,12,255)
    f,b=fit_font(SANS,txt,int(((box[2]-box[0])-6)*0.85),int(((box[3]-box[1])-4)*0.82))
    tl=Image.new('RGBA',(W,H),(0,0,0,0)); dr=ImageDraw.Draw(tl)
    tw=b[2]-b[0];th=b[3]-b[1]; px=box[0]+((box[2]-box[0])-tw)/2-b[0]; py=box[1]+((box[3]-box[1])-th)/2-b[1]
    dr.text((px,py),txt,font=f,fill=fill,stroke_width=3,stroke_fill=sc)
    L.alpha_composite(tl)
    im[y:y+H,x:x+W]=np.array(L)
Image.fromarray(im,'RGBA').save(os.path.expanduser('~/work/uitex2/t17515_0_new.png'))
Image.fromarray(orig,'RGBA').save(os.path.expanduser('~/work/uitex2/t17515_0_orig.png'))
bg=Image.new('RGBA',(1700,260),(215,215,215,255)); bg.alpha_composite(Image.fromarray(im[730:990,1300:3000],'RGBA'))
bg2=Image.new('RGBA',(1700,260),(215,215,215,255)); bg2.alpha_composite(Image.fromarray(orig[730:990,1300:3000],'RGBA'))
s=Image.new('RGB',(1700,520)); s.paste(bg2.convert('RGB'),(0,0)); s.paste(bg.convert('RGB'),(0,260)); s.save(SH+'flags_preview.png')
