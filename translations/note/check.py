import json,re,sys,os
sys.path.insert(0,os.path.expanduser('~/tools'))
from wrap import tw
LIM=int(os.environ.get('LIM','860'))
def load():
    M={}
    for ln in open('short_all.txt',encoding='utf8'):
        if '⇒' in ln: a,b=ln.rstrip('\n').split(' ⇒ '); M[a]=b
    F={}
    for f in sorted(os.listdir('.')):
        if f.startswith('fix') and f.endswith('.txt'):
            for ln in open(f,encoding='utf8'):
                if '⇒' in ln: a,b=ln.rstrip('\n').split(' ⇒ '); F[a]=b
    for a,b in list(M.items()):
        while b in F: b=F[b]
        M[a]=b
    return M
def lines(s,L=LIM):
    out=[];cur=''
    for w in s.split(' '):
        c=(cur+' '+w) if cur else w
        if cur and tw(c)>L: out.append(cur);cur=w
        else: cur=c
    out.append(cur); return out
def inst(b):
    return b.replace('N straight','7 straight').replace(' N ',' 7 ').replace('just N','just 2').replace('An Nf','A 6f').replace('both Nf','both 6f').replace('all N ','all 6 ')
if __name__=='__main__':
    M=load(); bad=0
    for a,b in M.items():
        t=inst(b); L=lines(t)
        if len(L)>3 or any(tw(x)>LIM for x in L): bad+=1; print('LONG',t,L)
    print('bad',bad,len(M))
