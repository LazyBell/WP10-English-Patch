# multi-template texture search (PC 1.0.4 original FPackages). usage: texfind2.py START  (runs ~150s, resumable)
import sys,os,json,time,numpy as np,cv2
os.environ.setdefault('WPVER','104')
sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc,g1t
from PIL import Image
W=os.path.expanduser('~/work/');TD=os.path.expanduser('~/mnt/Desktop/WINNING POST 10 TRANSLATION/_work_tpl/')
S=ktpc.Set('High');SC=json.load(open(W+'pc/texscan_pc.json'))
TP={}
for f in sorted(os.listdir(TD)):
    if f.endswith('.png') and (not os.environ.get('ONLY') or f[:-4] in os.environ['ONLY'].split(',')): TP[f[:-4]]=cv2.cvtColor(np.array(Image.open(TD+f).convert('RGB')),cv2.COLOR_RGB2GRAY)
prog=W+'pc/texfind2_prog'+os.environ.get('TAG','')+'.json'; start=int(sys.argv[1])
res=json.load(open(prog)) if os.path.exists(prog) and start>0 else []
want=[x for x in SC if any(w>=64 and h>=32 for f,w,h in x[3])]
t0=time.time();k=start
while k<len(want) and time.time()-t0<150:
    i,fk,cnt,dims=want[k];k+=1
    try: p=ktpc.payload(S.raw(S.ents[i]));T=g1t.parse(p)
    except Exception: continue
    for ti,t in enumerate(T):
        if t['w']<64 or t['h']<32: continue
        t['lin']=True
        try: im=g1t.decode(p,t)
        except Exception: continue
        _im=im.convert('RGBA');_bg=Image.new('RGBA',_im.size,(236,236,236,255));_bg.alpha_composite(_im)
        a=cv2.cvtColor(np.array(_bg.convert('RGB')),cv2.COLOR_RGB2GRAY)
        a=cv2.resize(a,(max(1,a.shape[1]//2),max(1,a.shape[0]//2)),interpolation=cv2.INTER_AREA)
        for n,tp in TP.items():
            best=0;bl=None
            for s in (0.5,0.75,1.0,1.25):
                tt=cv2.resize(tp,(max(8,int(tp.shape[1]*s)),max(8,int(tp.shape[0]*s))),interpolation=cv2.INTER_AREA)
                if tt.shape[0]>a.shape[0] or tt.shape[1]>a.shape[1]: continue
                r=cv2.matchTemplate(a,tt,cv2.TM_CCOEFF_NORMED);m=float(r.max())
                if m>best: best=m;bl=(s,cv2.minMaxLoc(r)[3])
            if best>0.55: res.append([n,round(best,3),i,ti,t['w'],t['h'],bl])
json.dump(res,open(prog,'w'))
print('next',k,'of',len(want),'hits',len(res))
for r in sorted(res,key=lambda x:-x[1])[:12]: print(r)
