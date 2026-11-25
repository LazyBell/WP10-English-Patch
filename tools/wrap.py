# word-wrap English text inside WMM message bytes (proportional font estimate via DejaVu Sans)
import re
from PIL import ImageFont
F=ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf',100)
LIMIT=3350; VAR=900; _w={}
def cw(c):
    if c not in _w: _w[c]=F.getlength(c)
    return _w[c]
CODE=re.compile(r'\^0\d(?:~\d+~)?')
def tw(s): return sum(cw(c) for c in CODE.sub('',s))
TXT=re.compile(rb'\x01"((?:[\x1b][KH]|[^\x00-\x1f])*)')
LIMITS={31:1650,19:2950,20:2600,8:2300,9:3650}
def wrap(m,bank=None):
    LIM=LIMITS.get(bank,LIMIT)
    out=bytearray(); i=0; x=0.0; var=False
    while i<len(m):
        mt=TXT.match(m,i)
        if mt:
            t=mt.group(1)
            if t and all(b<128 for b in t):
                s=t.decode('ascii')
                if var and x>0: x+=VAR
                var=False
                res=''; words=re.split(r'( )',s); line_has=x>0
                afterv=bool(out) and (out.endswith(b'\xc8') or out[-3:-2]==b'\x02' or (len(out)>=6 and out[-6:-4]==b'\x01C'))
                for wi,w in enumerate(words):
                    ww=tw(w)
                    if wi==0 and afterv and (w.startswith("'") or w[:1] in ',.!?;:'): res+=w; x+=ww; continue
                    if w!=' ' and w and x+ww>LIM and line_has and any(ch.isalnum() for ch in w):
                        # break: drop trailing space
                        res=res.rstrip(' ')+'\n'; x=0
                        if w==' ': continue
                    if w==' ' and x==0 and res.endswith('\n'): continue
                    res+=w; x+=ww
                    if w.strip(): line_has=True
                out+=b'\x01"'+res.encode('ascii').replace(b'\n',b'\x0a\x01"')
            else:
                out+=mt.group(0)
                if t: x+=tw('x')*len(t)//2 if False else 0
            i=mt.end(); continue
        c=m[i]
        if c in (0x0a,0x05,0x04): x=0; var=False
        elif c==0x02: var=True
        elif c==0x01 and i+1<len(m) and m[i+1]==0x43: var=True
        out.append(c); i+=1
    return bytes(out)
