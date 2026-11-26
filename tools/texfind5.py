# style-flag texture search: all textures (any size), templates cropped from a screenshot
import sys,os,json,time,numpy as np,cv2
os.environ.setdefault('WPVER','104')
sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc,g1t
from PIL import Image
W=os.path.expanduser('~/work/')
shot=Image.open(os.path.expanduser('~/mnt/Desktop/WINNING POST 10 TRANSLATION/_work_tpl/shots/daiseikou_tpl.png')).convert('RGB')
g=cv2.cvtColor(np.array(shot),cv2.COLOR_RGB2GRAY)
TP={'ds':g[10:160,0:450]}
S=ktpc.Set('High');SC=json.load(open(W+'pc/texscan_pc.json'))
prog=W+'pc/texfind5_state.json'; st=json.load(open(prog)) if os.path.exists(prog) else {'k':int(sys.argv[1]),'res':[]}; start=st['k']; END=10**9
res=st['res']
t0=time.time();k=start
while k<min(len(SC),END) and time.time()-t0<165:
    i,fk,cnt,dims=SC[k];k+=1
    try: p=ktpc.payload(S.raw(S.ents[i]));T=g1t.parse(p)
    except Exception: continue
    for ti,t in enumerate(T):
        if t['w']<24 or t['h']<16 or t['w']*t['h']>4096*4096: continue
        t['lin']=True
        try: im=g1t.decode(p,t)
        except Exception: continue
        _im=im.convert('RGBA');_bg=Image.new('RGBA',_im.size,(225,225,225,255));_bg.alpha_composite(_im)
        a=cv2.cvtColor(np.array(_bg.convert('RGB')),cv2.COLOR_RGB2GRAY)
        for n,tp in TP.items():
            best=0
            for s in (1.7,2.0,2.4):
                tt=cv2.resize(tp,(max(8,int(tp.shape[1]*s)),max(8,int(tp.shape[0]*s))))
                if tt.shape[0]>a.shape[0] or tt.shape[1]>a.shape[1]: continue
                m=float(cv2.matchTemplate(a,tt,cv2.TM_CCOEFF_NORMED).max())
                if m>best: best=m
            if best>0.8: res.append([n,round(best,3),i,ti,t['w'],t['h']])
    if k%50==0: json.dump({'k':k,'res':res},open(prog,'w'))
json.dump({'k':k,'res':res,'done':True},open(prog,'w'))
print('next',k,'of',len(SC),'hits',len(res))
for r in sorted(res,key=lambda x:-x[1])[:10]: print(r)
