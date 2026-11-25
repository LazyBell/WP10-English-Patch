import subprocess,sys,numpy as np,os,json
W,H,Y0=1280,48,656
out={}
for f in sys.argv[1:]:
    p=subprocess.run(['ffmpeg','-v','error','-i',f,'-vf',f'fps=10,crop={W}:{H}:0:{Y0},format=gray','-f','rawvideo','-'],capture_output=True).stdout
    a=np.frombuffer(p,np.uint8).reshape(-1,H,W)>110
    segs=[];cur=None
    for i,fr in enumerate(a):
        on=fr.sum()>40
        if on and cur is not None and (fr^a[cur[0]]).sum()>fr.sum()*0.5: segs.append((cur[0],i));cur=None
        if on and cur is None: cur=[i]
        if not on and cur is not None: segs.append((cur[0],i));cur=None
    if cur: segs.append((cur[0],len(a)))
    segs=[(s/10,e/10) for s,e in segs if e-s>=5]
    out[os.path.basename(f)]=segs
    print(os.path.basename(f),len(segs),segs[:3])
json.dump(out,open(os.path.expanduser('~/work/capsegs.json'),'w'))
