import sys,os,json,glob,struct,shutil
sys.path.insert(0,os.path.expanduser('~/tools'))
W=os.path.expanduser('~/work/')
SRC=W+'pc/DATA.UNB';OUT=W+'pc_out/DATA.UNB';UNH_OUT=W+'pc_out/DATA.UNH'
def m(i): assert i!=256; return i if i<256 else i-1
def tab(h): return [struct.unpack_from('<QQII',h,0x20+24*i) for i in range((len(h)-0x20)//24)]
EP=tab(open(W+'pc/DATA.UNH','rb').read())
P=[]
for f in sorted(glob.glob(W+'unb_patches_*.json')):
    P+=[(m(i),a,bytes.fromhex(h)) for i,a,h in json.load(open(f))]
shutil.copyfile(SRC,OUT)
o=open(SRC,'rb');bufs={}
for i,a,b in P:
    if i not in bufs:
        off,x,unc,comp=EP[i];assert unc==comp
        o.seek(off);bufs[i]=bytearray(o.read(comp))
    assert a+len(b)<=len(bufs[i]);bufs[i][a:a+len(b)]=b
f=open(OUT,'r+b')
for i in sorted(bufs): f.seek(EP[i][0]);f.write(bufs[i])
f.close();print('patches',len(P),'entries',len(bufs))
import racebuild
repl={m(i):d for i,d in racebuild.go().items()}
if os.path.exists(W+'pc/c552/0552_en.bin'): repl[m(552)]=open(W+'pc/c552/0552_en.bin','rb').read()
base=os.path.getsize(SRC);f=open(OUT,'r+b');f.seek(base);h=bytearray(open(W+'pc/DATA.UNH','rb').read());pos=base
for i in sorted(repl):
    d=repl[i];pad=(-pos)%0x800;f.write(b'\0'*pad);pos+=pad;f.write(d)
    a=0x20+24*i;off,x,unc,comp=struct.unpack('<QQII',h[a:a+24]);h[a:a+24]=struct.pack('<QQII',pos,x,len(d),len(d));pos+=len(d)
f.write(b'\0'*((-pos)%0x800));f.close();open(UNH_OUT,'wb').write(h);print('relocated',sorted(repl),pos)
