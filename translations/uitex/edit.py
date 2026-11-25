import numpy as np
from PIL import Image,ImageDraw,ImageFont,ImageFilter
SERIF='/usr/share/texmf/fonts/opentype/public/tex-gyre/texgyrebonum-bold.otf'
SANS='/usr/share/fonts/truetype/google-fonts/Poppins-Bold.ttf'
def fit_font(path,text,w,h,maxs=400):
    s=maxs
    while s>8:
        f=ImageFont.truetype(path,s);b=f.getbbox(text)
        if b[2]-b[0]<=w and b[3]-b[1]<=h: return f,b
        s-=2
    return f,b
def text_layer(size,text,box,path,fill,stroke=0,stroke_fill=None,grad=None,italic=0.0,spacing=0):
    W,H=size;L=Image.new('RGBA',size,(0,0,0,0));x0,y0,x1,y1=box
    lines=text.split('\n');n=len(lines);lh=(y1-y0)/n
    for li,ln in enumerate(lines):
        f,b=fit_font(path,ln,(x1-x0)-2*stroke,lh-2*stroke)
        m=Image.new('L',size,0);d=ImageDraw.Draw(m)
        tw=b[2]-b[0];th=b[3]-b[1]
        px=x0+((x1-x0)-tw)/2-b[0];py=y0+li*lh+(lh-th)/2-b[1]
        if stroke:
            ms=Image.new('L',size,0);ImageDraw.Draw(ms).text((px,py),ln,font=f,fill=255,stroke_width=stroke,stroke_fill=255)
            L.paste(Image.new('RGBA',size,stroke_fill),(0,0),ms)
        d.text((px,py),ln,font=f,fill=255)
        if grad:
            g=np.zeros((H,W,4),np.uint8);c0=np.array(grad[0]);c1=np.array(grad[1])
            ys=np.clip((np.arange(H)-(y0+li*lh))/max(1,lh),0,1)[:,None]
            g[:,:,:3]=(c0[None,None,:3]*(1-ys[:,:,None])+c1[None,None,:3]*ys[:,:,None]).astype(np.uint8);g[:,:,3]=255
            L.paste(Image.fromarray(g,'RGBA'),(0,0),m)
        else: L.paste(Image.new('RGBA',size,fill),(0,0),m)
    if italic:
        L=L.transform(size,Image.AFFINE,(1,italic,-italic*(y0+y1)/2,0,1,0),resample=Image.BICUBIC)
    return L
