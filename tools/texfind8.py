import sys,os,json,time,numpy as np,cv2
os.environ.setdefault('WPVER','104');sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc2,g1t
from PIL import Image
B=os.path.expanduser('~/mnt/Desktop/WINNING POST 10 TRANSLATION/Winning Post 10 2026/FPackages/')
S=ktpc2.Set('High',B);W=os.path.expanduser('~/work/')
sh=np.array(Image.open(os.path.expanduser('~/mnt/Desktop/WINNING POST 10 TRANSLATION/_work_tpl/shots/tagline_shot.png')).convert('RGB'))
tp=cv2.cvtColor(sh[432:492,30:560],cv2.COLOR_RGB2GRAY)  # 時代の覇者は執念で紡がれた
L=json.load(open(W+sys.argv[1]));P=W+'pc/texfind8.json'
st=json.load(open(P)) if os.path.exists(P) else {'k':0,'res':[]};k=st['k'];t0=time.time()
while k<len(L) and time.time()-t0<160:
    i=L[k];k+=1
    try: p=ktpc2.payload(S.raw(S.ents[i]));T=g1t.parse(p)
    except Exception: continue
    for ti,t in enumerate(T):
        if t['w']<64 or t['h']<16: continue
        t['lin']=True
        try: im=g1t.decode(p,t).convert('RGBA')
        except Exception: continue
        for mode in ('a','g'):
            if mode=='a': a=np.array(im)[...,3]; tt0=tp
            else:
                bg=Image.new('RGBA',im.size,(40,40,40,255));bg.alpha_composite(im);a=cv2.cvtColor(np.array(bg.convert('RGB')),cv2.COLOR_RGB2GRAY);tt0=tp
            best=0
            for s in (0.25,0.35,0.5,0.7,1.0,1.4,2.0):
                tt=cv2.resize(tt0,(max(8,int(tt0.shape[1]*s)),max(4,int(tt0.shape[0]*s))),interpolation=cv2.INTER_AREA)
                if tt.shape[0]>=a.shape[0] or tt.shape[1]>=a.shape[1]: continue
                best=max(best,float(cv2.matchTemplate(a,tt,cv2.TM_CCOEFF_NORMED).max()))
            if best>0.55: st['res'].append([i,ti,mode,round(best,3),t['w'],t['h']])
st['k']=k;json.dump(st,open(P,'w'));print(k,len(L),sorted(st['res'],key=lambda x:-x[3])[:8])
