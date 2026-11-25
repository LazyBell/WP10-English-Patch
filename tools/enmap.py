# enmap.py OUT KEYS(comma) "old=>new" ...  replace exact EN strings within listed messages
import sys,os,json,subprocess
D=json.load(open(os.path.expanduser('~/work/pc/texts_dump.json'),encoding='utf8'))
out=sys.argv[1];keys=sys.argv[2].split(',');mp=dict(a.split('=>',1) for a in sys.argv[3:])
args=[]
for key in keys:
    for i,e in enumerate(D[key]):
        if e in mp: args.append(f'{key}:{i}={mp[e]}')
subprocess.run(['python3',os.path.expanduser('~/tools/segfix.py'),out]+args,stdout=subprocess.DEVNULL)
print(len(args))
