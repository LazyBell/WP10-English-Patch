import sys,os,json,time,numpy as np,cv2
sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc,g1t
from PIL import Image
W=os.path.expanduser('~/work/')
S=ktpc.Set('High');SC=json.load(open(W+'pc/texscan_pc.json'))
tpl0=cv2.cvtColor(np.array(Image.open(sys.argv[3]).convert('RGB')),cv2.COLOR_RGB2GRAY)
sizes=sys.argv[1].split(',');start=int(sys.argv[2]);prog=W+'pc/tutfind_prog.json'
res=json.load(open(prog)) if os.path.exists(prog) and start>0 else []
t0=time.time();k=start
want=[x for x in SC if any(f'{w}x{h}' in sizes for f,w,h in x[3])]
print('cands',len(want))
ar=tpl0.shape[0]/tpl0.shape[1]
while k<len(want) and time.time()-t0<150:
    i,fk,cnt,dims=want[k];k+=1
    try: p=ktpc.payload(S.raw(S.ents[i]));T=g1t.parse(p)
    except Exception: continue
    for t in T:
        if f"{t['w']}x{t['h']}" not in sizes: continue
        t['lin']=True
        try: im=g1t.decode(p,t)
        except Exception: continue
        rgba=np.array(im.convert('RGBA')).astype(np.float32)
        al=rgba[...,3:4]/255.0
        if al.mean()>0.97: continue
        bg=np.array([46,140,64],np.float32)
        rgb=(rgba[...,:3]*al+bg*(1-al)).astype(np.uint8)
        a=cv2.cvtColor(rgb,cv2.COLOR_RGB2GRAY)
        a=cv2.resize(a,(a.shape[1]//4,a.shape[0]//4),interpolation=cv2.INTER_AREA)
        best=0;bl=None
        for tw in range(180,min(a.shape[1],460)+1,6):
            th=int(tw*ar)
            if th>a.shape[0]: break
            tt=cv2.resize(tpl0,(tw,th),interpolation=cv2.INTER_AREA)
            r=cv2.matchTemplate(a,tt,cv2.TM_CCOEFF_NORMED);m=float(r.max())
            if m>best: best=m;bl=(tw,cv2.minMaxLoc(r)[3])
        if best>0.45: res.append((i,fk,t['i'],t['w'],t['h'],best,bl))
json.dump(res,open(prog,'w'))
print('next',k,'of',len(want),'hits',sorted(res,key=lambda x:-x[5])[:6])
