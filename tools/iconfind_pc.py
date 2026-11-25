import sys,os,json,time,numpy as np,cv2
sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc,g1t
from PIL import Image
W=os.path.expanduser('~/work/')
S=ktpc.Set('High');SC=json.load(open(W+'pc/texscan_pc.json'))
t=np.array(Image.open(os.path.expanduser('~/mnt/Winning post 10 pc/_work/flag_sa.png')).convert('RGB'))[5:27,10:32]  # inner kanji + green
sizes=sys.argv[1].split(',');start=int(sys.argv[2]);prog=W+'pc/iconfind_prog.json'
res=json.load(open(prog)) if os.path.exists(prog) and start>0 else []
want=[x for x in SC if any(f'{w}x{h}' in sizes for f,w,h in x[3])];print('cands',len(want))
t0=time.time();k=start
while k<len(want) and time.time()-t0<150:
    i,fk,cnt,dims=want[k];k+=1
    try: p=ktpc.payload(S.raw(S.ents[i]));T=g1t.parse(p)
    except Exception: continue
    for tt in T:
        if f"{tt['w']}x{tt['h']}" not in sizes: continue
        tt['lin']=True
        try: im=np.array(g1t.decode(p,tt).convert('RGBA'))
        except Exception: continue
        a=im[:,:,:3].astype(np.float32)*(im[:,:,3:4]/255.0)
        a=a.astype(np.uint8);best=0
        for sc in (1.2,1.4,1.5,1.6,1.8,2.0):
            tp=cv2.resize(t,(int(22*sc),int(22*sc)),interpolation=cv2.INTER_CUBIC)
            if tp.shape[0]>a.shape[0] or tp.shape[1]>a.shape[1]: continue
            r=cv2.matchTemplate(a,tp,cv2.TM_CCOEFF_NORMED);m=float(r.max())
            if m>best: best=m;bl=(sc,cv2.minMaxLoc(r)[3])
        if best>0.55: res.append((i,fk,tt['i'],tt['w'],tt['h'],best,bl))
json.dump(res,open(prog,'w'))
print('next',k,len(want),sorted(res,key=lambda x:-x[5])[:8])
