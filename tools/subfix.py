# subfix.py OUT "key:idx|regex|repl" ... (idx may be * for all segs)
import sys,os,json,re,subprocess
D=json.load(open(os.path.expanduser('~/work/pc/texts_dump.json'),encoding='utf8'))
out=sys.argv[1];args=[];miss=[]
for a in sys.argv[2:]:
    l,rx,rp=a.split('|');b,k,i=l.split(':');key=f'{b}:{k}';tx=D[key]
    idx=range(len(tx)) if i=='*' else [int(i)]
    hit=0
    for j in idx:
        e=tx[j]
        if not isinstance(e,str): continue
        n=re.sub(rx,rp,e)
        if n!=e: args.append(f'{key}:{j}={n}');tx[j]=n;hit+=1
    if not hit: miss.append(a)
subprocess.run(['python3',os.path.expanduser('~/tools/segfix.py'),out]+args,stdout=subprocess.DEVNULL)
print(len(args),'miss',miss)
