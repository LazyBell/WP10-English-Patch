# rxmap.py OUT RULESFILE keys... : apply ordered regex rules (pattern<TAB>repl) to flagged ' - ' segs; fallback ': '
import sys,os,json,re,subprocess
D=json.load(open(os.path.expanduser('~/work/pc/texts_dump.json'),encoding='utf8'))
out=sys.argv[1];R=[l.rstrip('\n').split('\t') for l in open(sys.argv[2],encoding='utf8') if '\t' in l]
fb='--nofb' not in sys.argv
args=[]
for key in [k for k in sys.argv[3:] if not k.startswith('--')]:
    for i,e in enumerate(D[key]):
        if not(isinstance(e,str) and e.startswith(' - ')): continue
        n=None
        for p,r in R:
            if re.match(p,e): n=re.sub(p,r,e,count=1);break
        if n is None and fb and len(e)>3: n=': '+e[3:]
        if n is not None and n!=e: args.append(f'{key}:{i}={n}')
if '--dry' in sys.argv:
    [print(a) for a in args]
else: subprocess.run(['python3',os.path.expanduser('~/tools/segfix.py'),out]+args,stdout=subprocess.DEVNULL)
print(len(args))
