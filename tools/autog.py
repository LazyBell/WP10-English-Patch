import sys,os,json,subprocess
W=os.path.expanduser('~/work/')
G={}
for f in ['sd4','sd6','sd10','sd11','sd12','sd13','sd14']+[x[:-5] for x in sorted(os.listdir(W)) if x.startswith('sdb') and x.endswith('.json')]:
    p=W+f+'.json'
    if os.path.exists(p): G.update(json.load(open(p)))
b=int(sys.argv[1])
out=subprocess.run(['python3',os.path.expanduser('~/tools/rk.py'),str(b)],capture_output=True,text=True).stdout.splitlines()
keys=[l.split('\t')[0] for l in out if '\t' in l]
n=out[-1].split()[-1]
hit={k:G[k] for k in keys if k in G}
json.dump(hit,open(W+'sd_new.json','w'),ensure_ascii=False)
if hit: subprocess.run(['python3',os.path.expanduser('~/tools/merge.py'),str(b),'0',n],capture_output=True)
for l in out:
    if '\t' in l and l.split('\t')[0] not in hit: print(l[:100])
print('bank',b,'auto',len(hit),'left',len(keys)-len(hit))
