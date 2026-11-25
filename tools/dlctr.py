import json,re,unicodedata
W='/'.join(__file__.split('/')[:-2])+'/work/' if False else __import__('os').path.expanduser('~/work/')
U=json.load(open(W+'pc/dlc_lines.json'))
LE={}
for ln in open(W+'pc/dlc_lines_en.txt',encoding='utf8'):
    ln=ln.rstrip('\n')
    if not ln: continue
    i,e=ln.split('=',1);LE[U[int(i)]]=e
NM={}
for ln in open(W+'pc/dlc_names.txt',encoding='utf8'):
    k,v=ln.rstrip('\n').split('=',1);NM[k]=v
def nz(s): return unicodedata.normalize('NFKC',s)
def name(n):
    n=n.strip()
    if not n: return None
    if n in NM: return NM[n]
    if not re.search(r'[぀-ヿ一-鿿]',n): return nz(n)
    return None
pn=re.compile(r'^(.+?)[（(]([０-９0-9]{4})(年生まれ)?[）)]$')
def tr(l):
    if l=='' : return ''
    if l in LE: return LE[l]
    m=pn.match(l)
    if m:
        a=name(m.group(1));return None if a is None else f"{a} ({nz(m.group(2))})"
    if l.startswith('　') and '：' in l:
        out=[]
        for part in l.split('　'):
            if not part: continue
            if '：' not in part: return None
            k,v=part.split('：',1);a=name(v)
            if a is None or k not in ('父','母'): return None
            out.append(('Sire: ' if k=='父' else 'Dam: ')+a)
        return '  '+'  '.join(out)
    return None
L=json.load(open(W+'pc/dlc_long.json'));L.sort()
res={};bad=[]
consumed=False
for idx,(v,sl,s) in enumerate(L):
    lines=s.split('\n');out=[]
    for j,l in enumerate(lines):
        if j==0 and consumed: out.append('');consumed=False;continue
        t=tr(l)
        if t is None and j==len(lines)-1 and idx+1<len(L):
            nxt=L[idx+1][2].split('\n')[0];t=tr(l+nxt)
            if t is not None: consumed=True
        if t is None: bad.append((hex(v),l[:50]));out=None;break
        out.append(t)
    else:
        pass
    if out is not None: res[s]=('\n'.join(out))
    else: consumed=False
print('translated',len(res),'of',len(L),'bad',len(bad))
for b in bad: print(b)
json.dump(res,open(W+'pc/dlc_tr.json','w'),ensure_ascii=False)
# --- word wrap for the DLC box (game wraps mid-word otherwise)
import sys,os
sys.path.insert(0,os.path.expanduser('~/tools'))
from wrap import tw
LIMW=2450
def wl(line):
    line=line.replace('● ','')
    ind=re.match(r'^( *(?:- |\(\d\) )?)',line).group(1)
    cont=' '*len(ind) if ind.strip() else ind
    words=line[len(ind):].split(' ');out=[];cur=ind
    for w in words:
        fresh=(cur==ind or cur==cont)
        t=cur+w if fresh else cur+' '+w
        if tw(t)>LIMW and not fresh: out.append(cur);cur=cont+w
        else: cur=t
    out.append(cur);return '\n'.join(out)
res={k:'\n'.join(wl(l) for l in v.split('\n')) for k,v in res.items()}
json.dump(res,open(W+'pc/dlc_tr.json','w'),ensure_ascii=False)
print(list(res.values())[0][:900])
