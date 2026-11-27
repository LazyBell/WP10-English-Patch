import struct,sys,os
def rd(path):
    d=open(path,'rb').read()
    pe=struct.unpack_from('<I',d,0x3c)[0]
    nsec=struct.unpack_from('<H',d,pe+6)[0]; opt=struct.unpack_from('<H',d,pe+20)[0]
    magic=struct.unpack_from('<H',d,pe+24)[0]
    dd=pe+24+(96 if magic==0x10b else 112)
    rva,sz=struct.unpack_from('<II',d,dd+2*8)
    secs=[]
    so=pe+24+opt
    for i in range(nsec):
        n,vs,va,rs,ro=struct.unpack_from('<8sIIII',d,so+i*40)
        secs.append((va,vs,ro,rs))
    def off(r):
        for va,vs,ro,rs in secs:
            if va<=r<va+max(vs,rs): return r-va+ro
    base=off(rva)
    out=[]
    def name(o):
        l=struct.unpack_from('<H',d,base+o)[0]; return d[base+o+2:base+o+2+2*l].decode('utf-16le')
    def walk(o,path):
        nn,ni=struct.unpack_from('<HH',d,base+o+12)
        for i in range(nn+ni):
            n,t=struct.unpack_from('<II',d,base+o+16+i*8)
            k=name(n&0x7fffffff) if n&0x80000000 else n
            if t&0x80000000: walk(t&0x7fffffff,path+[k])
            else:
                drva,dsz=struct.unpack_from('<II',d,base+t)
                out.append((path+[k],off(drva),dsz))
    walk(0,[])
    return d,out
if __name__=='__main__':
    d,out=rd(sys.argv[1])
    T={1:'CURSOR',2:'BITMAP',3:'ICON',4:'MENU',5:'DIALOG',6:'STRING',10:'RCDATA',14:'GROUP_ICON',16:'VERSION',24:'MANIFEST',240:'DLGINIT',241:'TOOLBAR'}
    from collections import Counter
    c=Counter(); s=Counter()
    for p,o,z in out: c[T.get(p[0],p[0])]+=1; s[T.get(p[0],p[0])]+=z
    for k in c: print(k,c[k],s[k])
