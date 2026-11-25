# sf.py OUT "b:k:i=text" ... ; propagates each edit to all indices in msg whose current EN == EN at i
import sys,os,json,subprocess
D=json.load(open(os.path.expanduser('~/work/pc/texts_dump.json'),encoding='utf8'))
out=sys.argv[1];args=[]
for a in sys.argv[2:]:
    l,t=a.split('=',1);b,k,i=l.split(':');key=f'{b}:{k}';tx=D[key]
    if int(i)>=len(tx): print('OOR',a);continue
    e=tx[int(i)]
    idx=[j for j,x in enumerate(tx) if x==e] if (isinstance(e,str) and (e.startswith(' - ') or e.startswith(': '))) else [int(i)]
    if int(i) not in idx: idx.append(int(i))
    for j in idx: args.append(f'{key}:{j}={t}')
subprocess.run(['python3',os.path.expanduser('~/tools/segfix.py'),out]+args,stdout=subprocess.DEVNULL)
print(len(args))
