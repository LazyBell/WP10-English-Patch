import sys,os,json,time
sys.path.insert(0,os.path.expanduser('~/tools'))
import kt,g1t,cv2,numpy as np
from PIL import Image
T0=time.time()
names=sys.argv[1].split(','); scales=[float(x) for x in sys.argv[2].split(',')]; start=int(sys.argv[3])
tpls={}
for n in names:
    im=np.array(Image.open(os.path.expanduser('~/mnt/eden/_tmp/tpl/%s.png'%n)).convert('L'))
    for s in scales: tpls[(n,s)]=cv2.resize(im,None,fx=s*0.5,fy=s*0.5,interpolation=cv2.INTER_AREA)
cand=json.load(open(os.path.expanduser('~/work/hi_tex.json')))
cnt,out=kt.rdb.rdb('root.rdb')
resf=os.path.expanduser('~/work/fmt_res.json'); res=json.load(open(resf)) if os.path.exists(resf) and start>0 else []
i=start
while i<len(cand) and time.time()-T0<160:
    j=cand[i]; i+=1
    try: p=kt.payload(kt.raw(out[j])); TT=g1t.parse(p)
    except Exception as ex: continue
    for t in TT:
        if t['fmt'] not in g1t.FMT: continue
        if t['w']<64 or t['h']<16: continue
        try: a_=np.array(g1t.decode(p,t).convert('RGBA')).astype(np.float32)
        except Exception: continue
        g=(a_[...,:3].mean(2)*a_[...,3]/255).astype(np.uint8); g=cv2.resize(g,None,fx=0.5,fy=0.5,interpolation=cv2.INTER_AREA)
        al=cv2.resize(a_[...,3].astype(np.uint8),None,fx=0.5,fy=0.5,interpolation=cv2.INTER_AREA)
        for (n,s),tp in tpls.items():
            if g.shape[0]<tp.shape[0] or g.shape[1]<tp.shape[1]: continue
            r=cv2.matchTemplate(g,tp,cv2.TM_CCOEFF_NORMED)
            if al.min()<250: r=np.maximum(r,np.abs(cv2.matchTemplate(al,tp,cv2.TM_CCOEFF_NORMED)))
            mx=float(r.max())
            if mx>0.55:
                loc=np.unravel_index(r.argmax(),r.shape); res.append([mx,n,j,t['i'],s,int(loc[1])*2,int(loc[0])*2])
json.dump(res,open(resf,'w'))
best={}
for r in res:
    if r[1] not in best or r[0]>best[r[1]][0]: best[r[1]]=r
print('next',i,'of',len(cand),best)
