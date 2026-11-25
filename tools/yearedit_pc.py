import numpy as np,os,sys,json,math
from PIL import Image,ImageDraw,ImageFont
W=os.path.expanduser('~/work/')
FB='/usr/share/fonts/truetype/lato/Lato-BlackItalic.ttf'
MAP={0:0,1:2,2:3,3:4,4:5,6:10,7:11,8:12,9:13}   # pc texture -> years.json key
def runs(v,thr=3):
    segs=[];inn=False
    for y,x in enumerate(v):
        if x>thr and not inn:s0=y;inn=True
        if x<=thr and inn:segs.append((s0,y));inn=False
    if inn: segs.append((s0,len(v)))
    return segs
def txt(img,cx,cy,s,size,fill,outline=(10,30,20,255),sw=3,maxw=None,shadow=True):
    f=ImageFont.truetype(FB,size)
    while maxw and f.getlength(s)>maxw and size>9: size-=1;f=ImageFont.truetype(FB,size)
    d=ImageDraw.Draw(img);bb=d.textbbox((0,0),s,font=f,stroke_width=sw)
    x=cx-(bb[2]-bb[0])/2-bb[0];y=cy-(bb[3]-bb[1])/2-bb[1]
    if shadow: d.text((x+2,y+2),s,font=f,fill=(0,0,0,210),stroke_width=sw,stroke_fill=(0,0,0,210))
    d.text((x,y),s,font=f,fill=fill,stroke_width=sw,stroke_fill=outline)
    return x,f.getlength(s)
def star(img,x,cy,r,fill):
    d=ImageDraw.Draw(img);pts=[]
    for i in range(10):
        ang=-math.pi/2+i*math.pi/5;rr=r if i%2==0 else r*0.45
        pts.append((x+rr*math.cos(ang),cy+rr*math.sin(ang)))
    d.polygon([(px+2,py+2) for px,py in pts],fill=(0,0,0,210));d.polygon(pts,fill=fill,outline=(15,30,20,255))
def interp(a,x0,y0,x1,y1):
    L=a[y0:y1,x0-3:x0].astype(np.float32).mean(1);R=a[y0:y1,x1:x1+3].astype(np.float32).mean(1)
    t=np.linspace(0,1,x1-x0)[None,:,None];a[y0:y1,x0:x1]=(L[:,None,:]*(1-t)+R[:,None,:]*t).round().astype(np.uint8)
def tbox(a,x0,y0,x1,y1,pad=5):
    sub=a[y0:y1,x0:x1].astype(int);m=(sub[...,:3].min(2)>140)&(sub[...,3]>200)
    ys,xs=np.where(m)
    if len(xs)==0: return None
    return (max(x0,x0+xs.min()-pad),y0,min(x1,x0+xs.max()+pad+1),y1)
def edit(i,Y):
    im=Image.open(W+f'pc/y{i}.png').convert('RGBA');a=np.array(im)
    panel=Y['panel'];bans=Y['ban']
    body=a[:,40:392].astype(int);lines=runs(((body[...,:3].max(2)>150)&(body[...,3]>150)).sum(1))
    lines=[l for l in lines if l[1]-l[0]>8]
    hdr=lines[0];lines=lines[1:]
    if len(lines)!=len(panel)-1: raise SystemExit(f'tex {i}: {len(lines)} lines vs {len(panel)-1}')
    # heading colour
    hl=lines[0];sub=a[hl[0]:hl[1],60:390].astype(int);m=(sub[...,3]>200)&(sub[...,:3].max(2)>150)
    hcol=tuple(int(v) for v in np.median(sub[m][:,:3],0))+(255,)
    gaps=[(lines[k+1][0]-lines[k][1],(lines[k][1]+lines[k+1][0])//2) for k in range(len(lines)-1)];gy=max(gaps)[1]
    y0=hdr[1]+2;y1=lines[-1][1]+6
    a[y0:y1,0:397]=a[gy,0:397][None,:,:]
    hb=tbox(a,60,hdr[0],392,hdr[1],8)
    if hb: interp(a,hb[0],hdr[0]+1,hb[2],hdr[1]-1)
    # right side
    right=runs((a[:,400:900,3]>150).sum(1));right=[r for r in right if r[0]>150 and r[1]-r[0]>15]
    if len(right)!=2*len(bans): raise SystemExit(f'tex {i}: right {right} vs {len(bans)}')
    for k in range(len(bans)):
        b=right[2*k];n=right[2*k+1]
        tb=tbox(a,420,b[0]+2,800,b[1]-2,6)
        if tb: interp(a,tb[0],b[0]+2,tb[2],b[1]-2)
        a[b[1]+1:n[1]+6,398:900]=0
    img=Image.fromarray(a)
    txt(img,232,(hdr[0]+hdr[1])/2-1,panel[0],46,(255,255,255,255),outline=(0,40,30,255),sw=4,maxw=250)
    for (ya,yb),(s,kind) in zip(lines,panel[1:]):
        cy=(ya+yb)/2
        if kind=='h': txt(img,236,cy,s,36,hcol,outline=(20,25,15,255),sw=3,maxw=330)
        else:
            st=s.startswith('*');t=s.lstrip('* ')
            x,w=txt(img,236+(10 if st else 0),cy,t,27,(255,255,255,255),sw=3,maxw=300 if st else 330)
            if st: star(img,x-14,cy,9,(255,255,255,255))
    for k,(tag,name) in enumerate(bans):
        b=right[2*k];n=right[2*k+1]
        txt(img,608,(b[0]+b[1])/2,tag,25,(255,250,190,255),outline=(15,40,25,255),sw=3,maxw=385)
        txt(img,608,(n[0]+n[1])/2,name,30,(255,255,255,255),sw=3,maxw=410)
    img.save(W+f'pc/y{i}_en.png');return img
if __name__=='__main__':
    Y=json.load(open(W+'years.json'))
    sheet=Image.new('RGBA',(900*3,720*3),(70,90,80,255))
    for n,(i,k) in enumerate(MAP.items()):
        img=edit(i,Y[str(k)]);sheet.alpha_composite(img.crop((0,0,900,720)),((n%3)*900,(n//3)*720))
    sheet.convert('RGB').resize((1350,1080)).save(os.path.expanduser('~/mnt/eden/_tmp/pcy/en_sheet.jpg'),quality=88)
