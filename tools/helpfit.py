# Fit bank-19 help pages into the help box: max 8 lines, max width LIMH (narrower than dialogue, for pages with a picture).
import re
from wrap import wrap as _wrap0, LIMITS, tw
import wrap as _wm, inspect as _ins
# help-page variant of wrap(): may also break before symbol words like '>' '=' '->' '+' '/'
_src=_ins.getsource(_wm.wrap).replace('def wrap(','def hwrap(').replace("and any(ch.isalnum() for ch in w):","and (any(ch.isalnum() for ch in w) or w in ('>','<','=','->','+','/','&')):")
_ns=dict(vars(_wm)); exec(_src,_ns); hwrap=_ns['hwrap']
def wrap(m,bank=None): return hwrap(m,bank)
MAXL=8; LIMH=2750
LIMITS['help']=LIMH
_CODES=re.compile(rb'\x01"|\x1b[HK]|\^0\d(?:~\d+~)?|\x02..',re.S)
def is_help(m_jp): return not m_jp.startswith(b'\x05') and b'\x04' not in m_jp[:6]
def _txt(l): return _CODES.sub(b'',l).decode('latin-1')
def _split(m):
    i=m.find(b'\x05'); body,tail=(m,b'') if i<0 else (m[:i],m[i:])
    return body.split(b'\n'),tail
def nlines(m): return len(_split(m)[0])
def width(m): return max(tw(_txt(l)) for l in _split(m)[0])
_BUL=re.compile(r'^\s*(?:[-*・•(<\[※]|\d+[.)]|[A-Z][a-z]* ?:)')
def _join(lines,cond):
    out=[lines[0]]
    for l in lines[1:]:
        p=out[-1]
        if cond(_txt(p),_txt(l)):
            out[-1]=p.rstrip(b' ')+b' '+l.lstrip(b' ') if not p.endswith(b'"') else p+l
        else: out.append(l)
    return out
def _rebuild(lines,tail): return b'\n'.join(lines)+tail
def fit(m):
    body=_split(m)[0]
    if any(l and not l.startswith((b'\x01"',b'\x1b',b'^0',b'\x02')) for l in body): return m,'skip-raw'
    if nlines(m)<=MAXL and width(m)<=LIMH: return m,'ok'
    lines,tail=_split(m)
    soft=lambda a,b: a.strip()!='' and b.strip()!='' and not re.search(r'[.!?:)"\]]\s*$',a) and not _BUL.match(b)
    l1=_join(lines,soft); cand=wrap(_rebuild(l1,tail),'help')
    if nlines(cand)<=MAXL: return cand,'reflow'
    l2=[l for l in l1 if _txt(l).strip()!='' ]
    cand=wrap(_rebuild(l2,tail),'help')
    if nlines(cand)<=MAXL: return cand,'drop-blank'
    hard=lambda a,b: a.strip()!='' and b.strip()!='' and not _BUL.match(b)
    l2p=[]
    for i,l in enumerate(l2):
        nxt=l2[i+1] if i+1<len(l2) else None
        if nxt is not None and hard(_txt(l),_txt(nxt)) and not re.search(r'[.!?:;,)"\]]\s*$',_txt(l)): l=l.rstrip(b' ')+b'.'
        l2p.append(l)
    l3=_join(l2p,hard); cand=wrap(_rebuild(l3,tail),'help')
    if nlines(cand)<=MAXL: return cand,'join-all'
    return cand,'MANUAL'
