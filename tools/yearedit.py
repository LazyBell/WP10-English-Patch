import numpy as np,os,cv2,sys
from PIL import Image,ImageDraw,ImageFont,ImageFilter
W=os.path.expanduser('~/work/')
FB='/usr/share/fonts/truetype/lato/Lato-BlackItalic.ttf'
FS='/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf'
def textbbox_mask(a,x0,y0,x1,y1,pad=7):
    sub=a[y0:y1,x0:x1].astype(int)
    lum=sub[...,:3].max(2); al=sub[...,3]
    m=((lum>185)&(al>200)).astype(np.uint8)
    ys,xs=np.where(m)
    if len(xs)==0: return None
    return (x0+xs.min()-pad,y0+ys.min()-pad,x0+xs.max()+pad+1,y0+ys.max()+pad+1)
def inpaint_rect(a,box,rad=6):
    x0,y0,x1,y1=box
    L=a[y0:y1,x0-3:x0].astype(np.float32).mean(1); R=a[y0:y1,x1:x1+3].astype(np.float32).mean(1)
    t=np.linspace(0,1,x1-x0)[None,:,None]
    a[y0:y1,x0:x1]=(L[:,None,:]*(1-t)+R[:,None,:]*t).round().astype(np.uint8)
def draw_text(img,cx,cy,text,size,fill,outline=(10,40,20,255),sw=4,font=FB,maxw=None,shadow=True):
    f=ImageFont.truetype(font,size)
    while maxw and f.getlength(text)>maxw and size>10:
        size-=1; f=ImageFont.truetype(font,size)
    d=ImageDraw.Draw(img)
    bb=d.textbbox((0,0),text,font=f,stroke_width=sw)
    x=cx-(bb[2]-bb[0])/2-bb[0]; y=cy-(bb[3]-bb[1])/2-bb[1]
    if shadow: d.text((x+3,y+3),text,font=f,fill=(0,0,0,200),stroke_width=sw,stroke_fill=(0,0,0,200))
    d.text((x,y),text,font=f,fill=fill,stroke_width=sw,stroke_fill=outline)
def star(img,x,cy,r,fill):
    import math
    d=ImageDraw.Draw(img); pts=[]
    for i in range(10):
        ang=-math.pi/2+i*math.pi/5; rr=r if i%2==0 else r*0.45
        pts.append((x+rr*math.cos(ang),cy+rr*math.sin(ang)))
    d.polygon([(px+2,py+2) for px,py in pts],fill=(0,0,0,200)); d.polygon(pts,fill=fill,outline=(15,35,20,255))
def segs_of(a):
    body=a[100:690,3660:4050].astype(int)
    rows=((body[...,:3].max(2)>110)&(body[...,3]>150)).sum(1); segs=[];inn=False
    for y,v in enumerate(rows):
        if v>3 and not inn: s0=y;inn=True
        if v<=3 and inn: segs.append((s0+100,y+100));inn=False
    if inn: segs.append((s0+100,690))
    return segs
def edit(tex_png,out_png,panel,banners):
    im=Image.open(tex_png).convert('RGBA'); a=np.array(im)
    px0,px1=3640,4096
    lines=segs_of(a)
    if len(lines)!=len(panel)-1: raise SystemExit('line count %d vs %d %s'%(len(lines),len(panel)-1,lines))
    gaps=[(lines[i+1][0]-lines[i][1],(lines[i][1]+lines[i+1][0])//2) for i in range(len(lines)-1)]
    gy=max(gaps)[1]
    # heading colour from first heading line
    hl=lines[0]; sub=a[hl[0]:hl[1],3660:4050].astype(int)
    m=(sub[...,3]>200)&(sub[...,:3].max(2)>150)
    hcol=tuple(int(v) for v in np.median(sub[m][:,:3],0))+(255,)
    bgrow=a[gy,px0:px1].copy()
    a[98:692,px0:px1]=bgrow[None,:,:]
    hb=textbbox_mask(a,3700,5,4047,105)
    if hb: inpaint_rect(a,hb)
    boxes=[]
    for (x0,y0,x1,y1),ct,nt in banners:
        for reg in ((x0+15,y0,x1-15,y0+43),(x0+15,y0+43,x1-15,y1)):
            b=textbbox_mask(a,*reg); boxes.append((reg,b))
            if b: inpaint_rect(a,b)
    img=Image.fromarray(a)
    draw_text(img,3895,52,panel[0],58,(255,255,255,255),outline=(0,40,30,255),sw=5,maxw=330)
    cx=3893
    for (y0,y1),(txt,kind) in zip(lines,panel[1:]):
        cy=(y0+y1)/2
        if kind=='h': draw_text(img,cx,cy,txt,44,hcol,outline=(20,25,15,255),sw=4,maxw=390)
        else:
            st=txt.startswith('*'); t=txt.lstrip('* ')
            f=ImageFont.truetype(FB,36); size=36
            while f.getlength(t)>(360 if st else 390): size-=1; f=ImageFont.truetype(FB,size)
            if st:
                wdt=f.getlength(t); draw_text(img,cx+12,cy,t,size,(255,255,255,255),outline=(15,35,20,255),sw=4)
                star(img,cx+12-wdt/2-20,cy-4,13,(255,255,255,255))
            else: draw_text(img,cx,cy,t,size,(255,255,255,255),outline=(15,35,20,255),sw=4)
    for k,((x0,y0,x1,y1),ct,nt) in enumerate(banners):
        (r1,b1),(r2,b2)=boxes[2*k],boxes[2*k+1]
        ccx=(x0+x1)/2
        draw_text(img,ccx,(b1[1]+b1[3])/2 if b1 else (r1[1]+r1[3])/2,ct,30,(250,240,170,255),outline=(10,40,20,255),sw=3,maxw=(x1-x0)-50)
        draw_text(img,ccx,(b2[1]+b2[3])/2 if b2 else (r2[1]+r2[3])/2,nt,40,(255,255,255,255),outline=(10,40,20,255),sw=4,maxw=(x1-x0)-50)
    img.save(out_png)
