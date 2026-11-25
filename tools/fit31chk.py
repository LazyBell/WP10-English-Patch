import sys,os,json,re,glob
sys.path.insert(0,os.path.expanduser('~/tools'))
from wrap import tw
LIM=1700; MAXL=4; W=os.path.expanduser('~/work/fit31/')
def vis(line):
  n=len(re.findall(r'\{[vr][0-9a-f]+\}',line)); return re.sub(r'\{[^}]*\}','',line),n
def toks(s): return sorted(re.findall(r'\{[vrj][0-9a-f]+\}',s))
def check(old,new):
  errs=[]; lines=new.split(' / ')
  if len(lines)>MAXL: errs.append('lines>%d'%MAXL)
  for l in lines:
    t,n=vis(l); w=tw(t)+800*n
    if w>LIM: errs.append('wide %d: %s'%(w,l))
  if toks(old)!=toks(new): errs.append('tokens %s != %s'%(toks(old),toks(new)))
  if new.count('{c')!=new.count('{/c}'): errs.append('colour unbalanced')
  return errs
def merged():
  T=json.load(open(W+'todo.json')); done=json.load(open(W+'done_raw.json'))
  F={}
  for x in T:
    if x['raw'] in done: F[x['raw']]=(x,done[x['raw']]['new'])
  byi={x['i']:x for x in T}
  for f in sorted(glob.glob(W+'n*.json')):
    for k,v in json.load(open(f)).items(): F[byi[int(k)]['raw']]=(byi[int(k)],v)
  return T,F
if __name__=='__main__':
  T,F=merged(); bad=0
  for raw,(x,v) in F.items():
    e=check(x['old'],v)
    if e: bad+=1; print(x['i'],e)
  print('done',len(F),'/',len(T),'bad',bad)
  if len(sys.argv)>1:
    a,b=map(int,sys.argv[1:3])
    for x in T[a:b]:
      if x['raw'] not in F: print(x['i'],x['old'].replace(' / ',' ').replace('{H}',''))
