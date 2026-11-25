# vfix.py OUT "key|s0 ¦ s1 ¦ ..." ...   applies same segment list to every variant block (len must divide)
import sys,os,json,subprocess
D=json.load(open(os.path.expanduser('~/work/pc/texts_dump.json'),encoding='utf8'))
out=sys.argv[1];args=[];bad=[]
for a in sys.argv[2:]:
    key,rest=a.split('|',1);L=rest.split(' ¦ ');t=D[key];n=len(t);k=len(L)
    if n%k: bad.append((key,n,k));continue
    for v in range(n//k):
        for i,s in enumerate(L):
            j=v*k+i
            if t[j] is None and s=='': continue
            args.append(f'{key}:{j}={s}')
subprocess.run(['python3',os.path.expanduser('~/tools/segfix.py'),out]+args,stdout=subprocess.DEVNULL)
print(len(args),'bad',bad)
