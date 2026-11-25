import struct,os,pickle
W=os.path.expanduser('~/work/FPackages/release/')
def rdx(name):
    d=open(W+name,'rb').read(); m={}
    for i in range(0,len(d),8):
        idx,_,k=struct.unpack('<HHI',d[i:i+8]); m[idx]=k
    return m
def rdb(name):
    d=open(W+name,'rb').read()
    hs,ver,cnt,ktid=struct.unpack('<IIII',d[8:24])
    p=hs; out=[]
    while p<len(d):
        assert d[p:p+8]==b'IDRK0000',(hex(p),d[p:p+8])
        es,ps,fs=struct.unpack('<QQQ',d[p+8:p+32])
        a,fk,tk,fl=struct.unpack('<IIII',d[p+32:p+48])
        hdr=d[p+48:p+es-ps]; prm=d[p+es-ps:p+es]
        out.append(dict(pos=p,es=es,fs=fs,a=a,fk=fk,tk=tk,fl=fl,extra=hdr,prm=prm))
        p+=(es+3)&~3
    return cnt,out
