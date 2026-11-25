import numpy as np,sys,math
from PIL import Image
sys.path.insert(0,'.')
from edit import *
def radial_fix(im,cx,cy,R,band,xpad=1.35):
    a=np.array(im);src=a.copy()
    y0=int(cy-band*R);y1=int(cy+band*R)+1;x0=int(cx-R*xpad);x1=int(cx+R*xpad)+1
    # radial profile from upper-left diagonal + straight up, median
    prof={}
    for y in range(y0,y1):
        for x in range(x0,x1):
            r=math.hypot(x-cx,y-cy)
            ys=cy-r  # straight up
            sx,sy=int(round(cx)),int(round(ys))
            if r>R*1.02: continue
            if r>band*R*1.05 and 0<=sy<a.shape[0]:
                a[y,x]=src[sy,sx]
            else:
                # inner: sample along 60deg diagonal
                ang=math.radians(70);sx=int(round(cx+r*math.cos(ang)));sy=int(round(cy-r*math.sin(ang)))
                if r*math.sin(ang)>band*R*1.05: a[y,x]=src[sy,sx]
                else: a[y,x]=src[int(cy-band*R*1.15),int(cx)]
    return Image.fromarray(a,'RGBA')
