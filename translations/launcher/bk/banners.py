from PIL import Image,ImageDraw,ImageFont
import numpy as np,cv2
LB='/usr/share/fonts/truetype/lato/Lato-Bold.ttf';LK='/usr/share/fonts/truetype/lato/Lato-Black.ttf'
# 129 tagline
b=Image.open('en/129.png').convert('RGBA');arr=np.array(b.convert('RGB')).astype(int)
m=np.zeros(arr.shape[:2],np.uint8);m[194:207,213:276]=255
m=cv2.dilate(m,np.ones((3,3),np.uint8))
o=cv2.inpaint(np.array(b.convert('RGB'))[:,:,::-1].copy(),m,3,cv2.INPAINT_TELEA)[:,:,::-1]
b.paste(Image.fromarray(o).convert('RGBA'),(0,0),Image.fromarray(m).convert('L'))
ImageDraw.Draw(b).text((244,200),'Horse Racing Simulation',font=ImageFont.truetype(LB,6),fill=(255,255,255,255),anchor='mm')
b.save('en/129.png')
for s in 'UFD':
    # QUESTION
    im=Image.open(f'png/IDB_QUESTION_{s}.png').convert('RGBA');a=np.array(im).astype(int)
    ref=a[:,213,:3].copy()
    txt=(np.abs(a[6:47,56:210,:3]-ref[6:47,None,:]).sum(2)>90)
    col=tuple(int(c) for c in np.median(a[6:47,56:210,:3][txt],axis=0))
    if s=='U': print('qcol',col)
    a[5:48,60:211,:3]=ref[5:48,None,:]
    seg=a[5:48,46:60,:3]; g=(seg[:,:,1]>seg[:,:,0]+25)&(seg[:,:,1]>seg[:,:,2]+25)
    import cv2 as _c; g=_c.dilate(g.astype('uint8'),np.ones((2,2),np.uint8))>0
    seg[g]=np.broadcast_to(ref[5:48,None,:],seg.shape)[g]; a[5:48,46:60,:3]=seg
    im=Image.fromarray(a.astype('uint8'),'RGBA');d=ImageDraw.Draw(im)
    f=ImageFont.truetype(LK,13)
    d.text((135,19),'Answer our survey',font=f,fill=col+(255,),anchor='mm')
    d.text((135,35),'& earn points!',font=f,fill=col+(255,),anchor='mm')
    im.save(f'en/IDB_QUESTION_{s}.png')
    # GAMECITY pill
    im=Image.open(f'png/IDB_GAMECITY_{s}.png').convert('RGBA');a=np.array(im).astype(int)
    navy=(np.abs(a[:,:,:3]-np.array([81,94,148])).sum(2)<60)
    ys,xs=np.nonzero(navy[:20,40:170]);xs=xs+40
    if s=='U': print('pill',ys.min(),ys.max(),xs.min(),xs.max())
    y0,y1,x0,x1=ys.min(),ys.max(),xs.min(),xs.max()
    reg=a[y0:y1+1,x0+1:x1,:3];white=reg.sum(2)>450
    reg[white]=[81,94,148]
    # soften antialias: any pixel lighter than navy in region -> navy
    lighter=reg.sum(2)>(81+94+148)+40; reg[lighter]=[81,94,148]
    a[y0:y1+1,x0+1:x1,:3]=reg
    im=Image.fromarray(a.astype('uint8'),'RGBA');d=ImageDraw.Draw(im)
    d.text(((x0+x1)/2,(y0+y1)/2+0.5),'KOEI TECMO GAME SNS',font=ImageFont.truetype(LK,9),fill=(255,255,255,255),anchor='mm')
    im.save(f'en/IDB_GAMECITY_{s}.png')
