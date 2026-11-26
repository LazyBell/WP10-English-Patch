# alpha-mask search: shape of glyphs vs texture alpha (catches white/greyscale masks coloured by shader)
import sys,os,json,time,numpy as np,cv2
os.environ.setdefault('WPVER','104')
sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc,g1t
from PIL import Image
W=os.path.expanduser('~/work/')
g=cv2.cvtColor(np.array(Image.open(os.path.expanduser('~/mnt/Desktop/WINNING POST 10 TRANSLATION/_work_tpl/shots/daiseikou_tpl.png')).convert('RGB')),cv2.COLOR_RGB2GRAY)[10:160,0:450]
tp=(255-g).astype(np.uint8)
S=ktpc.Set('High');L=[i for i,e in enumerate(S.ents) if e['tk']==0xafbec60c]
prog=W+'pc/texfind7_state.json'; st=json.load(open(prog)) if os.path.exists(prog) else {'k':0,'res':[]}
t0=time.time();k=st['k']
while k<len(L) and time.time()-t0<160:
    i=L[k];k+=1
    try: p=ktpc.payload(S.raw(S.ents[i]));T=g1t.parse(p)
    except Exception: continue
    for ti,t in enumerate(T):
        if t['w']<128 or t['h']<64 or t['fmt'] not in (0x5b,0x5f,0x5c,0x59,0x0,0x1,0xa): continue
        t['lin']=True
        try: im=np.array(g1t.decode(p,t).convert('RGBA'))
        except Exception: continue
        a=im[...,3]
        if a.min()>250: continue
        a=cv2.resize(a,(a.shape[1]//2,a.shape[0]//2),interpolation=cv2.INTER_AREA);best=0
        for s in (0.375,0.5,0.67,0.85,1.0,1.2):
            tt=cv2.resize(tp,(int(450*s),int(150*s)),interpolation=cv2.INTER_AREA)
            if tt.shape[0]>=a.shape[0] or tt.shape[1]>=a.shape[1]: continue
            best=max(best,float(cv2.matchTemplate(a,tt,cv2.TM_CCOEFF_NORMED).max()))
        if best>0.7: st['res'].append([i,ti,round(best,3),t['w'],t['h']])
st['k']=k;json.dump(st,open(prog,'w'));print('next',k,'of',len(L),sorted(st['res'],key=lambda x:-x[2])[:8])
