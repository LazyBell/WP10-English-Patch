# Racing Glossary description rewrite: whole-description English with link placeholders [L1].. ; ' // ' = paragraph break
import os,re,glob,json
W=os.path.expanduser('~/work/')
LINK=re.compile(rb'\x02[\x10-\x1f](?:[^\x00-\x1f])?')
def load():
    D={}
    for f in sorted(glob.glob(W+'pc/gl/en_*.txt')):
        for ln in open(f,encoding='utf8'):
            ln=ln.rstrip('\n')
            if not ln.strip() or ln.startswith('#') or '|' not in ln: continue
            k,e=ln.split('|',1);D[int(k)]=e.strip()
    return D
REP={'’':"'",'‘':"'",'“':'"','”':'"','–':'-','—':'-','…':'...','×':'x','÷':'/'}
def asc(s):
    s=''.join(REP.get(c,c) for c in s)
    return b''.join(c.encode('ascii') if ord(c)<128 else c.encode('cp932') for c in s)
def build(m,en):
    links=[x.group(0) for x in LINK.finditer(m)]
    pad=m[len(m.rstrip(b'\0')):];m=m.rstrip(b'\0')
    end=re.search(rb'\x05+\x04?$',m).group(0)
    used=set();out=b''
    paras=en.split(' // ')
    for pi,p in enumerate(paras):
        if pi: out+=b'\x0a'
        p=p.replace('{/c}','\x00E').replace('{c','\x00C')
        for part in re.split(r'(\[L\d+\]|\x00E|\x00C\d+\})',p):
            if part=='\x00E': out+=b'^02';continue
            if part.startswith('\x00C'): out+=b'^04~'+part[2:-1].encode()+b'~';continue
            mm=re.fullmatch(r'\[L(\d+)\]',part)
            if mm:
                i=int(mm.group(1))-1;out+=links[i];used.add(i)
            elif part:
                for sub in re.split(r'([^\x00-\x7f]+)',part):
                    if sub: out+=b'\x01"'+asc(sub)
    assert used==set(range(len(links))),(en,len(links),used)
    return out+end+pad

def load_over():
    D={}
    for f in sorted(glob.glob(W+'pc/msg_over/*.txt')):
        for ln in open(f,encoding='utf8'):
            ln=ln.rstrip('\n')
            if not ln.strip() or ln.startswith('#') or '|' not in ln: continue
            k,e=ln.split('|',1);b,i=k.split(':');D[(int(b),int(i))]=e.strip()
    return D
