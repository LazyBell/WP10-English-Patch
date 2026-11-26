# find g1t textures embedded in non-g1t entries (High, original Steam copy)
import sys,os,json,time,numpy as np,cv2
os.environ.setdefault('WPVER','104')
sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc,g1t
from PIL import Image
W=os.path.expanduser('~/work/')
g=cv2.cvtColor(np.array(Image.open(os.path.expanduser('~/mnt/Desktop/WINNING POST 10 TRANSLATION/_work_tpl/shots/daiseikou_tpl.png')).convert('RGB')),cv2.COLOR_RGB2GRAY)[10:160,0:450]
S=ktpc.Set('High')
L=[i for i,e in enumerate(S.ents) if e['tk']!=0xafbec60c and e['fs']<64<<20]
prog=W+'pc/embscan_state.json'; st=json.load(open(prog)) if os.path.exists(prog) else {'k':0,'emb':[],'res':[]}
t0=time.time();k=st['k']
while k<len(L) and time.time()-t0<160:
    i=L[k];k+=1
    try: p=ktpc.payload(S.raw(S.ents[i]))
    except Exception: continue
    o=p.find(b'GT1G')
    while o>=0:
        try:
            q=p[o:];T=g1t.parse(q);st['emb'].append([i,o,len(T)])
            for ti,t in enumerate(T):
                if t['w']<64 or t['h']<32: continue
                try: im=g1t.decode(q,t)
                except Exception: continue
                im=np.array(im.convert('RGB') if isinstance(im,Image.Image) else im)[...,:3].astype(np.uint8)
                a=cv2.cvtColor(im,cv2.COLOR_RGB2GRAY);best=0
                for s in (0.75,1.0,1.33,1.7,2.0,2.4):
                    tt=cv2.resize(g,(int(450/s),int(150/s)))
                    if tt.shape[0]>=a.shape[0] or tt.shape[1]>=a.shape[1]: continue
                    best=max(best,float(cv2.matchTemplate(a,tt,cv2.TM_CCOEFF_NORMED).max()))
                if best>0.8: st['res'].append([i,o,ti,round(best,3),t['w'],t['h']])
        except Exception: pass
        o=p.find(b'GT1G',o+4)
st['k']=k;json.dump(st,open(prog,'w'))
print('next',k,'of',len(L),'emb',len(st['emb']),'hits',st['res'][-5:])
