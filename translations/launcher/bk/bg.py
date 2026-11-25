from PIL import Image,ImageDraw,ImageFont,ImageFilter
import numpy as np,cv2
LR='/usr/share/fonts/truetype/lato/Lato-Regular.ttf';LB='/usr/share/fonts/truetype/lato/Lato-Bold.ttf';LK='/usr/share/fonts/truetype/lato/Lato-Black.ttf'
def inpaint(im,box,mask=None,r=5):
    a=np.array(im.convert('RGB'));m=np.zeros(a.shape[:2],np.uint8)
    if mask is None: x0,y0,x1,y1=box;m[y0:y1,x0:x1]=255
    else: m=mask
    o=cv2.inpaint(a[:,:,::-1].copy(),m,r,cv2.INPAINT_TELEA)[:,:,::-1]
    out=im.copy();out.paste(Image.fromarray(o).convert(im.mode));return out
def text(im,xy,s,font,size,fill,stroke=0,sfill=None,anchor='mm',glow=None):
    f=ImageFont.truetype(font,size)
    if glow:
        lay=Image.new('RGBA',im.size,(0,0,0,0));ImageDraw.Draw(lay).text(xy,s,font=f,fill=glow[0],stroke_width=glow[1],stroke_fill=glow[0],anchor=anchor)
        lay=lay.filter(ImageFilter.GaussianBlur(glow[2]));im.alpha_composite(lay) if im.mode=='RGBA' else None
    ImageDraw.Draw(im).text(xy,s,font=f,fill=fill,stroke_width=stroke,stroke_fill=sfill,anchor=anchor)
# --- 128 background
a=Image.open('png/128.png').convert('RGBA')
arr=np.array(a.convert('RGB')).astype(int)
# tagline mask: bright pixels in box
x0,y0,x1,y1=514,414,612,432
m=np.zeros(arr.shape[:2],np.uint8);sub=arr[y0:y1,x0:x1].sum(2)
m[y0:y1,x0:x1]=(sub>330)*255;m=cv2.dilate(m,np.ones((3,3),np.uint8))
a=inpaint(a,None,m,3)
text(a,(563,423),'Horse Racing Simulation',LB,9,(255,255,255,255),1,(40,40,40,255))
# copyright line
a=inpaint(a,(178,627,552,647),None,4)
text(a,(366,637),'©2023-2026 KOEI TECMO GAMES CO., LTD. All rights reserved.',LR,12,(255,255,255,255),1,(60,50,20,255))
a.save('en/128.png')
# --- 129 loading
b=Image.open('png/129.png').convert('RGBA')
b=inpaint(b,(58,114,345,188),None,7)
for y,s in [(139,'Running startup check...'),(166,'Please wait a moment.')]:
    text(b,(200,y),s,LB,22,(20,110,30,255),2,(255,255,255,255))
b.save('en/129.png')
