import sys,os,json,re
sys.path.insert(0,os.path.expanduser('~/tools'))
from wmmbuild import load,segs
from wmm import decode
W=os.path.expanduser('~/work/')
JP=re.compile(r'[぀-ヿ一-鿿ｦ-ﾟ]')
SAFE=set(json.load(open(W+'safe.json'))) if os.path.exists(W+'safe.json') else set()
def risky(s): return len(s)<=5 and bool(JP.search(s)) and s not in SAFE and not (s[0]=='（' and s[-1]=='）')
def need(s): return bool(s) and bool(re.search(r'[^\x00-\x7f]',s))
def L(n,d): 
    p=W+n
    return json.load(open(p)) if os.path.exists(p) else d
def look(sd,ctx,b,k,s):
    c=ctx.get(f'{b}:{k}|{s}')
    if c is not None: return c
    if s in sd and not risky(s): return sd[s]
    return None
def render(b,k,sd=None,ctx=None,banks=None):
    sd=sd or L('segdict.json',{}); ctx=ctx or L('ctx.json',{})
    if banks is None: banks=load()[1]
    out=[]
    for s in [decode(x) for x in segs(banks[b][1][k])]:
        if not need(s): out.append(s); continue
        v=look(sd,ctx,b,k,s); out.append(v if v is not None else '【'+s+'】')
    return ' ¦ '.join(out)
