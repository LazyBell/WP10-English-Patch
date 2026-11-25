import struct,sys
d=open(sys.argv[1] if len(sys.argv)>1 and sys.argv[1].endswith('.exe') else 'WP10_2026_Launcher.exe','rb').read()
RVA=0x1c3000;RO=0x1bc600
def o(r):return r-RVA+RO
TYPES={1:'CURSOR',2:'BITMAP',3:'ICON',4:'MENU',5:'DIALOG',6:'STRING',10:'RCDATA',12:'GROUP_CURSOR',14:'GROUP_ICON',16:'VERSION',24:'MANIFEST'}
def name(off):
    n=struct.unpack_from('<H',d,RO+off)[0];return d[RO+off+2:RO+off+2+2*n].decode('utf-16le')
def walk(off,path,out):
    nn,ni=struct.unpack_from('<HH',d,RO+off+12)
    for i in range(nn+ni):
        idn,ptr=struct.unpack_from('<II',d,RO+off+16+8*i)
        k=name(idn&0x7fffffff) if idn&0x80000000 else idn
        if ptr&0x80000000: walk(ptr&0x7fffffff,path+[k],out)
        else:
            rva,sz=struct.unpack_from('<II',d,RO+ptr);out.append((path+[k],o(rva),sz,RO+ptr))
out=[];walk(0,[],out)
if __name__=='__main__':
    for p,f,s,e in out:print([TYPES.get(p[0],p[0])]+p[1:],hex(f),s,d[f:f+8])
