import sys,os,json
sys.path.insert(0,os.path.expanduser('~/tools/audit'));import render
W=os.path.expanduser('~/work/')
dj,bj=render.banks(W+'pc/WMM_jp.DAT');de,be=render.banks(W+'pc_out/WMM.DAT')
J=json.load(open('/tmp/jpen.json'))
b=int(sys.argv[1]);a,z=int(sys.argv[2]),int(sys.argv[3])
for k in range(a,z):
    key=f'{b}:{k}'
    if key not in J: continue
    jr=render.render(render.msg(dj,bj,b,k)).strip(' |').split(' | ')[0]
    er=render.render(render.msg(de,be,b,k)).strip(' |').split(' | ')[0]
    js,en=J[key]
    print(f'=={key} n={len(js)}\n JP: {jr}\n EN: {er}')
    for i,(j,e) in enumerate(zip(js,en)):
        if i>=len(js)//max(1,sum(1 for x in js if x==js[0])) : break
        print(f'   {i}| {j} => {e}')
