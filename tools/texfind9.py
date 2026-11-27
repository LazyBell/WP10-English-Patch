# multi-template search over ALL High g1t textures; templates = (name, crop box) from a screenshot; alpha + gray modes
import sys,os,json,time,numpy as np,cv2
os.environ.setdefault('WPVER','104');sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc,g1t
from PIL import Image
W=os.path.expanduser('~/work/');cfg=json.load(open(sys.argv[1]))
sh=np.array(Image.open(os.path.expanduser(cfg['shot'])).convert('RGB'))
TP={n:cv2.cvtColor(np.ascontiguousarray(sh[y0:y1,x0:x1]),cv2.COLOR_RGB2GRAY) for n,(x0,y0,x1,y1) in cfg['tpl'].items()}
S=ktpc.Set('High');L=[i for i,e in enumerate(S.ents) if e['tk']==0xafbec60c]
P=W+cfg['state'];st=json.load(open(P)) if os.path.exists(P) else {'k':0,'res':[]};k=st['k'];t0=time.time()
SC=cfg.get('scales',[0.5,0.7,1.0,1.4,2.0])
while k<len(L) and time.time()-t0<160:
    i=L[k];k+=1
    try: p=ktpc.payload(S.raw(S.ents[i]));T=g1t.parse(p)
    except Exception: continue
    for ti,t in enumerate(T):
        if t['w']<32 or t['h']<16: continue
        t['lin']=True
        try: im=g1t.decode(p,t).convert('RGBA')
        except Exception: continue
        arr=np.array(im);A=arr[...,3]
        bg=Image.new('RGBA',im.size,(20,20,20,255));bg.alpha_composite(im);G=cv2.cvtColor(np.array(bg.convert('RGB')),cv2.COLOR_RGB2GRAY)
        for n,tp in TP.items():
            best=0
            for img in (A,G):
                for s in SC:
                    tt=cv2.resize(tp,(max(8,int(tp.shape[1]*s)),max(6,int(tp.shape[0]*s))),interpolation=cv2.INTER_AREA)
                    if tt.shape[0]>=img.shape[0] or tt.shape[1]>=img.shape[1] or tt.std()<3: continue
                    best=max(best,float(cv2.matchTemplate(img,tt,cv2.TM_CCOEFF_NORMED).max()))
            if best>cfg.get('thr',0.75): st['res'].append([n,i,ti,round(best,3),t['w'],t['h']])
st['k']=k;json.dump(st,open(P,'w'));print(k,len(L),sorted(st['res'],key=lambda x:-x[3])[:10])
