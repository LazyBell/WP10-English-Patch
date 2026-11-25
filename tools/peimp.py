import struct
def imports(d):
    pe=struct.unpack_from('<I',d,0x3c)[0]; ns=struct.unpack_from('<H',d,pe+6)[0]; so=pe+24+struct.unpack_from('<H',d,pe+20)[0]
    S=[struct.unpack_from('<8sIIII',d,so+40*s) for s in range(ns)]
    def r2o(r):
        for nm,vs,va,rs,ra in S:
            if va<=r<va+max(vs,rs): return r-va+ra
    opt=pe+24; impdir=struct.unpack_from('<II',d,opt+112+8)
    res={}; p=r2o(impdir[0])
    while True:
        ilt,ts,fc,name,iat=struct.unpack_from('<IIIII',d,p)
        if name==0: break
        dn=d[r2o(name):d.index(b'\0',r2o(name))].decode().lower()
        q=r2o(ilt or iat); k=0
        while True:
            v=struct.unpack_from('<Q',d,q+8*k)[0]
            if v==0: break
            if v>>63: fn='#%d'%(v&0xffff)
            else: o=r2o(v&0x7fffffff); fn=d[o+2:d.index(b'\0',o+2)].decode()
            res[iat+8*k]=(dn,fn); k+=1
        p+=20
    return res
