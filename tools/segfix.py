# usage: segfix.py out.txt "b:k:i=text" ...  -> writes SEGO line from current dump with replacements
import sys,json,os
W=os.path.expanduser('~/work/')
D=json.load(open(W+'pc/texts_dump.json',encoding='utf8'))
out=sys.argv[1];rep={}
for a in sys.argv[2:]:
    key,txt=a.split('=',1);b,k,i=key.split(':');rep.setdefault(f'{b}:{k}',{})[int(i)]=txt
lines=[]
ex={}
if os.path.exists(out):
    for ln in open(out,encoding='utf8'):
        if '|' in ln: ex[ln.split('|')[0]]=ln.rstrip('\n')
for key,r in rep.items():
    t=[x if x is not None else '' for x in D[key]]
    if key in ex:
        old=ex[key].split('|',1)[1].split(' ¦ ')
        if len(old)==len(t): t=old
    for i,v in r.items(): t[i]=v
    ex[key]=key+'|'+' ¦ '.join(t)
open(out,'w',encoding='utf8').write('\n'.join(ex.values())+'\n')
print(len(ex))
