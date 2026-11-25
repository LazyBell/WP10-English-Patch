import sys,os,json,time,numpy as np,cv2
sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc,g1t
from PIL import Image
W=os.path.expanduser('~/work/')
S=ktpc.Set('High');SC=json.load(open(W+'pc/texscan_pc.json'))
tpl=cv2.cvtColor(np.array(Image.open(os.path.expanduser('~/mnt/Winning post 10 pc/_work/dlc_crop.png')).convert('RGB')),cv2.COLOR_RGB2GRAY)
sizes=sys.argv[1].split(',');start=int(sys.argv[2]);prog=W+'pc/texfind_prog.json'
res=json.load(open(prog)) if os.path.exists(prog) and start>0 else []
t0=time.time();k=start
want=[x for x in SC if any(f'{w}x{h}'in sizes for f,w,h in x[3])]
print('cands',len(want))
while k<len(want) and time.time()-t0<150:
    i,fk,cnt,dims=want[k];k+=1
    try:
        p=ktpc.payload(S.raw(S.ents[i]));T=g1t.parse(p)
    except Exception: continue
    for t in T:
        if f"{t['w']}x{t['h']}" not in sizes: continue
        t['lin']=True
        try: im=g1t.decode(p,t)
        except Exception: continue
        a=cv2.cvtColor(np.array(im.convert('RGB')),cv2.COLOR_RGB2GRAY)
        a=cv2.resize(a,(a.shape[1]//4,a.shape[0]//4),interpolation=cv2.INTER_AREA)
        best=0
        for tw in range(56,int(min(a.shape)*1.0)+1,8):
            tt=cv2.resize(tpl,(tw,tw),interpolation=cv2.INTER_AREA)
            if tt.shape[0]>a.shape[0] or tt.shape[1]>a.shape[1]: break
            r=cv2.matchTemplate(a,tt,cv2.TM_CCOEFF_NORMED);m=float(r.max())
            if m>best: best=m;bl=(tw,cv2.minMaxLoc(r)[3])
        if best>0.5: res.append((i,fk,t['i'],t['w'],t['h'],best,bl))
json.dump(res,open(prog,'w'))
print('next',k,'hits',sorted(res,key=lambda x:-x[5])[:8])
