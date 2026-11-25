# segment batches: show next untranslated non-risky segments by id; apply id=English lines
import sys,os,json
sys.path.insert(0,os.path.expanduser('~/tools'))
from tr import risky,L
W=os.path.expanduser('~/work/')
T=json.load(open(W+'todo_segs.json'))
SKIPB={5}  # race commentary (TTS) - keep Japanese
def show(n,start=0,width=0):
    sd=L('segdict.json',{}); out=[]
    for i,(s,(b,k)) in enumerate(T):
        if i<start or risky(s) or s in sd or b in SKIPB: continue
        out.append(f'{i}={s}')
        if len(out)>=n: break
    print('\n'.join(out))
def apply(fn):
    sd=L('segdict.json',{}); n=0; bad=[]
    for l in open(fn,encoding='utf8'):
        l=l.rstrip('\n')
        if '=' not in l: continue
        i,e=l.split('=',1); i=int(i); s=T[i][0]
        if any(ord(c)>127 for c in e): bad.append(i); continue
        sd[s]=e; n+=1
    json.dump(sd,open(W+'segdict.json','w'),ensure_ascii=False); print('applied',n,'bad',bad)
if __name__=='__main__':
    if sys.argv[1]=='show': show(int(sys.argv[2]),int(sys.argv[3]) if len(sys.argv)>3 else 0)
    else: apply(sys.argv[2])
