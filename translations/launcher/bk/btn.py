from PIL import Image,ImageDraw,ImageFont
import numpy as np
LB='/usr/share/fonts/truetype/lato/Lato-Bold.ttf'
LBL={'FIRST':'Getting Started','SITE':'Official Website','CONFIG':'Launch Settings','MANUAL':'Web Manual',
 'SUPPORT':'Troubleshooting','DLCONTENTS':'Downloadable Content','ITEMSTORE':'Item Store','START':'Start Game'}
def edit(n,s,txt):
    im=Image.open(f'png/IDB_{n}_{s}.png').convert('RGBA');a=np.array(im).astype(int)
    h,w,_=a.shape
    x0,x1=(52,206) if n=='START' else (22,w-22)
    Y0,Y1=(20,h-20) if n=='START' else (13,h-13)
    ref=np.median(a[:,x0:x1,:3],axis=1)
    diff=np.abs(a[:,x0:x1,:3]-ref[:,None,:]).sum(2)
    m=diff>60; m[:Y0]=False;m[Y1:]=False
    ys,xs=np.nonzero(m); y0,y1=ys.min(),ys.max(); bx0,bx1=xs.min()+x0,xs.max()+x0
    strong=m&(diff>=np.percentile(diff[m],80))
    col=tuple(int(c) for c in np.median(a[:,x0:x1,:3][strong],axis=0))
    L,R=bx0-3,bx1+3
    b=a.copy()
    if n=='START':
        import cv2
        full=np.zeros((h,w),bool); full[:,x0:x1]=diff>40
        dm=cv2.dilate(full.astype('uint8'),np.ones((5,5),np.uint8))>0
        last=None
        for y in range(y0-3,y1+4):
            clean=[a[y,x,:3] for x in range(x0,x1) if not dm[y,x]]
            v=np.median(clean,axis=0) if len(clean)>8 else last
            last=v; b[y,x0:x1,:3]=v
    else:
      for y in range(y0-2,y1+3):
        for x in range(L+1,R):
            t=(x-L)/(R-L); b[y,x,:3]=a[y,L,:3]*(1-t)+a[y,R,:3]*t
    out=Image.fromarray(b.astype('uint8'),'RGBA');d=ImageDraw.Draw(out)
    sz=29 if n=='START' else 18
    maxw=(x1-x0)-8 if n=='START' else 196
    while True:
        f=ImageFont.truetype(LB,sz);l,t,r,bm=d.textbbox((0,0),txt,font=f)
        if r-l<=maxw: break
        sz-=1
    cx=w/2; cy=(y0+y1)/2
    d.text((cx-(r+l)/2,cy-(bm+t)/2),txt,font=f,fill=col+(255,))
    out.save(f'en/IDB_{n}_{s}.png'); return sz,col,(L,R,y0,y1)
if __name__=='__main__':
    for n,t in LBL.items():
        for s in 'UFD': print(n,s,edit(n,s,t))
