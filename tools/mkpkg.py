import numpy as np,struct,hashlib,os,shutil,sys
W=os.path.expanduser('~/work/'); MOD=os.path.expanduser('~/mnt/eden/load/01000AE025452000/English/')
OUT=os.path.expanduser(sys.argv[1] if len(sys.argv)>1 else '~/mnt/Winning Post 10/WP10_English_Patch/')
os.makedirs(OUT,exist_ok=True)
files=['DATA.UNB','DATA.UNH','WCM.DAT','WMM.DAT','EVENT/HistoricalTrainingInfo.bin','EVENT/UmasonaInfo.bin']
pk=bytearray(b'WPP1')+struct.pack('<I',len(files))
for f in files:
    a=np.fromfile(W+f,dtype=np.uint8); b=np.fromfile(MOD+'romfs/'+f,dtype=np.uint8)
    n=min(len(a),len(b)); diff=np.flatnonzero(a[:n]!=b[:n])
    runs=[]
    if len(diff):
        brk=np.flatnonzero(np.diff(diff)>32)
        starts=np.concatenate(([diff[0]],diff[brk+1])); ends=np.concatenate((diff[brk],[diff[-1]]))+1
        runs=list(zip(starts.tolist(),ends.tolist()))
    if len(b)>n: runs.append((n,len(b)))
    h=hashlib.sha256(a.tobytes()).hexdigest().upper()
    nb=f.encode(); pk+=struct.pack('<H',len(nb))+nb+struct.pack('<QQ',len(a),len(b))+h.encode()+struct.pack('<I',len(runs))
    bb=b.tobytes()
    for s,e in runs: pk+=struct.pack('<QI',s,e-s)+bb[s:e]
    print(f,len(runs),sum(e-s for s,e in runs))
open(OUT+'romfs_patch.wpp','wb').write(pk)
os.makedirs(OUT+'exefs',exist_ok=True)
shutil.copy(MOD+'exefs/574DC352542F99870185CF37D4BE39893FF24FA6.ips',OUT+'exefs/')
os.makedirs(OUT+'subtitles',exist_ok=True)
for f in os.listdir(MOD+'romfs/MOVIE'):
    if f.endswith('.ass'): shutil.copy(MOD+'romfs/MOVIE/'+f,OUT+'subtitles/')
print('size',len(pk))
