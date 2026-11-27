from PIL import Image, ImageDraw, ImageFont
from collections import Counter
import os
B='/root/launcher/bmp/'; O='/root/launcher/en/'
FONT='/usr/share/fonts/truetype/fira/FiraSans-SemiBold.ttf'
if not os.path.exists(FONT):
    import glob; FONT=[f for f in glob.glob('/usr/share/fonts/**/FiraSans-SemiBold*',recursive=True)][0]
LABELS={'CONFIG':['Launch Settings'],'DLCONTENTS':['Downloadable Content'],'FIRST':['Getting Started'],
 'ITEMSTORE':['Item Store'],'MANUAL':['Web Manual'],'SITE':['Official Website'],'SUPPORT':['Troubleshooting'],
 'START':['Start Game'],'QUESTION':['Take our survey','and earn points!']}
def dist(a,b): return sum(abs(a[i]-b[i]) for i in range(3))
def process(key,st):
    im=Image.open(f'{B}IDB_{key}_{st}.png').convert('RGBA'); W,H=im.size; px=im.load()
    # text box limits
    if key=='START': xr=(46,210); yr=(14,82)
    elif key=='QUESTION': xr=(58,214); yr=(7,46)
    else: xr=(24,232); yr=(11,46)
    # per-row mode within box -> background; text = pixels far from mode
    textcols=[];textpx=[]
    rowmode={}
    for y in range(*yr):
        c=Counter(px[x,y][:3] for x in range(*xr)); m=c.most_common(1)[0][0]; rowmode[y]=m
    tx=[];ty=[]
    for y in range(*yr):
        for x in range(*xr):
            if dist(px[x,y],rowmode[y])>60: tx.append(x);ty.append(y);textpx.append(px[x,y])
    x0,x1,y0,y1=min(tx),max(tx),min(ty),max(ty)
    # text colour: farthest from bg
    bgavg=rowmode[(y0+y1)//2]
    tc=max(textpx,key=lambda p:dist(p,bgavg))[:3]
    # erase: fill bbox (padded) with row mode
    for y in range(max(yr[0],y0-2),min(yr[1],y1+3)):
        for x in range(max(xr[0],x0-2),min(xr[1],x1+3)):
            px[x,y]=rowmode[y]+(255,)
    lines=LABELS[key]
    maxw=(xr[1]-xr[0])-8; cx=(x0+x1)/2 if key!='QUESTION' else (xr[0]+xr[1])/2
    cy=(y0+y1)/2
    size={'START':27,'QUESTION':17}.get(key,22)
    while True:
        f=ImageFont.truetype(FONT,size)
        ws=[f.getbbox(l)[2]-f.getbbox(l)[0] for l in lines]
        if max(ws)<=maxw: break
        size-=1
    d=ImageDraw.Draw(im)
    lh=size*1.12; tot=lh*len(lines)
    for i,l in enumerate(lines):
        yy=cy-tot/2+lh*i+lh/2
        d.text((cx,yy),l,font=f,fill=tc+(255,),anchor='mm')
    im.save(f'{O}IDB_{key}_{st}.png')
    return size,tc,(x0,x1,y0,y1)
for k in LABELS:
    for s in 'UFD': print(k,s,process(k,s))
