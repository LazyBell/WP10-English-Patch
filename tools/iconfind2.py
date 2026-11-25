import sys,os,json,time,numpy as np,cv2
sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc,g1t
from PIL import Image
W=os.path.expanduser('~/work/')
S=ktpc.Set('High');SC=json.load(open(W+'pc/texscan_pc.json'))
tpl0=cv2.cvtColor(np.array(Image.open(sys.argv[3]).convert('RGB')),cv2.COLOR_RGB2GRAY)
sizes=sys.argv[1].split(',');start=int(sys.argv[2]);prog=W+'pc/iconfind2_prog.json'
res=json.load(open(prog)) if os.path.exists(prog) and start>0 else []
want=[x for x in SC if any(f'{w}x{h}' in sizes for f,w,h in x[3])]
t0=time.time();k=start
while k<len(want) and time.time()-t0<150:
    i,fk,cnt,dims=want[k];k+=1
    try: p=ktpc.payload(S.raw(S.ents[i]));T=g1t.parse(p)
    except Exception: continue
    for t in T:
        if f"{t['w']}x{t['h']}" not in sizes: continue
        t['lin']=True
        try: im=g1t.decode(p,t)
        except Exception: continue
        rgba=np.array(im.convert('RGBA')).astype(np.float32);al=rgba[...,3:4]/255.0
        rgb=(rgba[...,:3]*al+np.array([225,228,225],np.float32)*(1-al)).astype(np.uint8)
        a=cv2.cvtColor(rgb,cv2.COLOR_RGB2GRAY)
        if max(a.shape)>1024: a=cv2.resize(a,(a.shape[1]//2,a.shape[0]//2),interpolation=cv2.INTER_AREA);sc=2
        else: sc=1
        best=0;bl=None
        for f in (0.5,0.6,0.7,0.8,0.9,1.0,1.15,1.3,1.5,1.75,2.0):
            tw=int(tpl0.shape[1]*f/sc);th=int(tpl0.shape[0]*f/sc)
            if tw<12 or th<8 or th>a.shape[0] or tw>a.shape[1]: continue
            tt=cv2.resize(tpl0,(tw,th),interpolation=cv2.INTER_AREA)
            r=cv2.matchTemplate(a,tt,cv2.TM_CCOEFF_NORMED);m=float(r.max())
            if m>best: best=m;bl=(f,[int(v*sc) for v in cv2.minMaxLoc(r)[3]])
        if best>0.75: res.append((i,fk,t['i'],t['w'],t['h'],best,bl))
json.dump(res,open(prog,'w'))
print('next',k,'of',len(want),'hits',sorted(res,key=lambda x:-x[5])[:6])
