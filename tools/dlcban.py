import os,numpy as np
from PIL import Image,ImageDraw,ImageFont,ImageFilter
W=os.path.expanduser('~/work/pc/dlcban/')
FB='/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf'
T=[l.rstrip('\n').split('|') for l in open(os.path.expanduser('~/work/pc/dlcban_titles.txt'))]
def gold(size,text,font):
    m=Image.new('L',size,0);ImageDraw.Draw(m).text((0,0),text,font=font,fill=255)
    return m
def render(n):
    im=Image.open(W+f'b{n:02d}.png').convert('RGBA');a=np.array(im).astype(np.int16)
    # erase caption text: bright pixels in band
    y0,y1,x0,x1=848,1022,0,1024
    reg=a[y0:y1,x0:x1,:3];br=reg.max(2);sat=reg[:,:,0]-reg[:,:,2]
    mask=Image.fromarray((((br>70)&(sat>20)|(br>170))*255).astype(np.uint8)).filter(ImageFilter.MaxFilter(11))
    mk=np.array(mask)>0
    reg[mk]=[2,2,2];a[y0:y1,x0:x1,:3]=reg
    im=Image.fromarray(a.clip(0,255).astype(np.uint8),'RGBA')
    title,cnt=T[n];l2=f'Purchase Set - {cnt} Horses'
    d=ImageDraw.Draw(im)
    for text,cy,maxs in ((title,900,62),(l2,975,54)):
        s=maxs
        while True:
            f=ImageFont.truetype(FB,s);bb=d.textbbox((0,0),text,font=f)
            if bb[2]-bb[0]<=820 or s<30: break
            s-=2
        w=bb[2]-bb[0];h=bb[3]-bb[1];x=(1024-w)//2-bb[0];y=cy-h//2-bb[1]
        # outline
        sh=Image.new('L',im.size,0);ImageDraw.Draw(sh).text((x,y),text,font=f,fill=255,stroke_width=4,stroke_fill=255)
        im.paste((20,12,0,255),(0,0),sh.filter(ImageFilter.GaussianBlur(1)))
        tm=Image.new('L',im.size,0);ImageDraw.Draw(tm).text((x,y),text,font=f,fill=255)
        grad=np.zeros((1024,1024,4),np.uint8)
        for yy in range(1024):
            t=min(1,max(0,(yy-(cy-h/2))/max(h,1)))
            c=np.array([255,250,215])*(1-t)+np.array([235,180,60])*t
            grad[yy,:,:3]=c;grad[yy,:,3]=255
        im.paste(Image.fromarray(grad,'RGBA'),(0,0),tm)
    return im
if __name__=='__main__':
    import sys
    for n in range(len(T)):
        render(n).save(W+f'b{n:02d}_en.png')
    sheet=Image.new('RGB',(4*512,2*256))
    for k,n in enumerate([0,11,30,34,31,35,12,8]):
        sheet.paste(Image.open(W+f'b{n:02d}_en.png').convert('RGB').crop((0,768,1024,1024)).resize((512,128)),((k%4)*512,(k//4)*128))
    sheet.save(os.path.expanduser('~/mnt/Winning post 10 pc/_work/ban_check.png'))
