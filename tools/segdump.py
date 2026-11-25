import sys,os,json,re
sys.path.insert(0,os.path.expanduser('~/tools'))
from gl_dump import loadf
from wmm import decode
from wmmbuild import SEG
W=os.path.expanduser('~/work/')
J=loadf(W+'pc/WMM_jp.DAT',W+'pc/pc_banks.json')
D=json.load(open(W+'pc/texts_dump.json'))
def glue(b):
    s=re.sub(rb'\x02([\x00-\xff])([\x00-\xff])',lambda x:b'{V%02x}'%x.group(1)[0],b)
    s=re.sub(rb'\x01C[\x00-\xff]{4}',b'{C}',s)
    s=s.replace(b'\x0a',b'/').replace(b'\x1bH',b'').replace(b'\x1bK',b'')
    s=re.sub(rb'\x05+\x04?',b'||',s)
    return re.sub(rb'[\x00-\x1f]',b'',s).decode('latin-1')
def show(bi,k):
    m=J[bi][k];ms=list(SEG.finditer(m));tx=D.get(f'{bi}:{k}')
    out=[f'## {bi}:{k}']
    pos=0
    for i,x in enumerate(ms):
        g=glue(m[pos:x.start()]);pos=x.end()
        jp=decode(x.group(1))
        en=tx[i] if tx else None
        out.append(f' {g} [{i}] {jp} => {en!r}')
    out.append(' '+glue(m[pos:]))
    return '\n'.join(out)
if __name__=='__main__':
    keys=[tuple(map(int,a.split(':'))) for a in sys.argv[1:]]
    for b,k in keys: print(show(b,k))
