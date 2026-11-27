import sys,os,json,re
sys.path.insert(0,os.path.expanduser('~/tools'))
from wmmapply_pc import loadf
from wmm import decode
W=os.path.expanduser('~/work/')
pc=loadf(W+'v104/WMM_jp.DAT',W+'v104/pc_banks.json')
D=json.load(open(W+'v104/texts_dump.json'))
SEG=re.compile(rb'\x01"\x0a?((?:[\x1b][KH]|[^\x00-\x1f])*)')
for a in sys.argv[1:]:
    b,k=map(int,a.split(':')); m=pc[b][1][k]
    en=D.get(a,[]); out=[]; i=0; si=0; pos=0
    for x in SEG.finditer(m):
        pre=m[pos:x.start()]
        if pre: out.append('{'+pre.hex(' ')+'}')
        e=en[si] if si<len(en) else '?'; si+=1
        out.append('['+decode(x.group(1))+' => '+repr(e)+']')
        pos=x.end()
    if m[pos:]: out.append('{'+m[pos:].rstrip(b'\0').hex(' ')+'}')
    print('==',a); print('\n'.join(out))
