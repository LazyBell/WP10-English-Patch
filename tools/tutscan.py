import sys,os,json,time,numpy as np
sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc,g1t
W=os.path.expanduser('~/work/')
S=ktpc.Set('High');SC=json.load(open(W+'pc/texscan_pc.json'))
prog=W+'pc/tutscan_prog.json';start=int(sys.argv[1])
res=json.load(open(prog)) if start>0 and os.path.exists(prog) else []
want=[x for x in SC if any(w==2048 and h==2048 for f,w,h in x[3])]
t0=time.time();k=start
while k<len(want) and time.time()-t0<150:
    i,fk,cnt,dims=want[k];k+=1
    try: p=ktpc.payload(S.raw(S.ents[i]));T=g1t.parse(p)
    except Exception: continue
    for t in T:
        if (t['w'],t['h'])!=(2048,2048): continue
        t['lin']=True
        try: a=np.asarray(g1t.decode(p,t).convert('RGB'))
        except Exception: continue
        bot=a[1100:2048:16,::16].mean();right=a[0:1080:16,1930:2048:8].mean();top=a[0:1080:16,0:1920:16].mean()
        hdr=a[5:50,200:1600].reshape(-1,3).mean(0)
        if bot<3 and right<3 and top>40: res.append((i,fk,t['i'],float(top),[float(x) for x in hdr]))
json.dump(res,open(prog,'w'))
print('next',k,'of',len(want),'found',len(res))
