import struct,re,json,glob,os,unicodedata
W=os.path.expanduser('~/work/pc/c552/')
d=open(os.path.expanduser('~/work/unb3/0552.bin'),'rb').read()
n=struct.unpack_from('<I',d,0)[0];offs=struct.unpack_from('<%dI'%n,d,4)
msgs=[d[offs[i]:(offs[i+1] if i+1<n else len(d))] for i in range(n)]
L=json.load(open(W+'segs.json'));T={}
for f in sorted(glob.glob(W+'t*.txt')):
    for ln in open(f,encoding='utf8'):
        ln=ln.rstrip('\n')
        if '|' not in ln: continue
        i,e=ln.split('|',1);T[L[int(i)].encode('cp932')]=e
REP={'’':"'",'‘':"'",'“':'"','”':'"','–':'-','—':'-','…':'...'}
def enc(s):
    s=''.join(REP.get(c,c) for c in s);return unicodedata.normalize('NFKD',s).encode('ascii','ignore')
TOK=re.compile(rb'(\x02[\x00-\xff])|([\x00-\x1f])|([^\x00-\x1f]+)')
out=[];miss=set()
for m in msgs:
    toks=[]
    for mm in TOK.finditer(m):
        if mm.group(1): toks.append(('V',mm.group(1)))
        elif mm.group(2): toks.append(('C',mm.group(2)))
        else:
            s=mm.group(3)
            if s in T: toks.append(('T',enc(T[s])))
            else: miss.add(s);toks.append(('T',s))
    # spacing around variables on same line
    for k,(t,v) in enumerate(toks):
        if t!='T' or not v.strip(): continue
        if k>0 and toks[k-1][0]=='V' and v[:1].isalnum() or (k>0 and toks[k-1][0]=='V' and v[:1] in b'("'): v=b' '+v.lstrip()
        if k+1<len(toks) and toks[k+1][0]=='V' and not v.endswith(b' '): v=v+b' '
        toks[k]=(t,v)
    # var followed directly by var on same line -> nothing
    out.append(b''.join(v for t,v in toks))
data=bytearray(struct.pack('<I',n));pos=4+4*n;tab=[]
for m in out: tab.append(pos);pos+=len(m)
data+=struct.pack('<%dI'%n,*tab)+b''.join(out)
open(W+'0552_en.bin','wb').write(bytes(data))
print('msgs',n,'size',len(d),'->',len(data),'missing',len(miss))
for i in (21,40,500,1000): print(out[i])
