import sys,json
# usage: trim.py src.txt rules.json out.txt ; rules {id:[[a,b],...]}
src,rf,out=sys.argv[1:4]
R=json.load(open(rf)); L={}
for x in open(src,encoding='utf8'):
    if '=' in x: k,v=x.split('=',1); L[k]=v
o=[]
for k,rs in R.items():
    v=L[k]
    for a,b in rs:
        if a not in v: print('MISS',k,a[:40]); continue
        v=v.replace(a,b)
    o.append(k+'='+v)
open(out,'w').write(''.join(o))
