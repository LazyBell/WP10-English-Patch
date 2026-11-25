import sys,os,json,time
sys.path.insert(0,os.path.expanduser('~/tools'))
import kt,g1t,cv2,numpy as np
from PIL import Image
T0=time.time()
TPL=os.path.expanduser('~/mnt/eden/_tmp/tpl/')
names=sys.argv[3].split(',')
scales=[float(x) for x in sys.argv[4].split(',')]
tpls={}
for n in names:
    im=np.array(Image.open(TPL+n+'.png').convert('L'))
    for s in scales:
        t=cv2.resize(im,None,fx=s*0.5,fy=s*0.5,interpolation=cv2.INTER_AREA)
        tpls[(n,s)]=t
cnt,out=kt.rdb.rdb('root.rdb')
a,b=int(sys.argv[1]),int(sys.argv[2])
resf=os.path.expanduser('~/work/ts4_%s.json'%names[0]); R=json.load(open(resf)) if os.path.exists(resf) else {}
last=a
for j in range(a,b):
    if time.time()-T0>165: break
    last=j+1
    e=out[j]
    if e['tk']!=0xafbec60c: continue
    try:
        p=kt.payload(kt.raw(e)); TT=g1t.parse(p)
    except Exception: continue
    for t in TT:
        if t['fmt'] not in g1t.FMT: continue
        if t['w']<64 or t['h']<16: continue
        try: im=g1t.decode(p,t).convert('RGBA')
        except Exception: continue
        a_=np.array(im).astype(np.float32)
        g=(a_[...,:3].mean(2)*a_[...,3]/255).astype(np.uint8); g=cv2.resize(g,None,fx=0.5,fy=0.5,interpolation=cv2.INTER_AREA); al=cv2.resize(a_[...,3].astype(np.uint8),None,fx=0.5,fy=0.5,interpolation=cv2.INTER_AREA)
        for (n,s),tp in tpls.items():
            if g.shape[0]<tp.shape[0] or g.shape[1]<tp.shape[1]: continue
            r=cv2.matchTemplate(g,tp,cv2.TM_CCOEFF_NORMED)
            if al.min()<250:
                r2=np.abs(cv2.matchTemplate(al,tp,cv2.TM_CCOEFF_NORMED)); r=np.maximum(r,r2)
            mx=float(r.max())
            if mx>0.6:
                loc=np.unravel_index(r.argmax(),r.shape)
                R.setdefault(n,[]).append([mx,j,t['i'],s,int(loc[1]),int(loc[0])])
json.dump(R,open(resf,'w')); print('done to',last,{k:sorted(v,reverse=True)[:3] for k,v in R.items()})
