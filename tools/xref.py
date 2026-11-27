import struct,re,sys,os,bisect
d=open(os.path.expanduser('~/work/v104/wp10_104_dec.exe'),'rb').read()
pe=struct.unpack_from('<I',d,0x3c)[0];ns=struct.unpack_from('<H',d,pe+6)[0];oh=struct.unpack_from('<H',d,pe+20)[0]
S={}
for k in range(ns):
    o=pe+24+oh+40*k;S[d[o:o+8].rstrip(b'\0').decode()]=struct.unpack_from('<IIII',d,o+8)
tv,ta,trs,trp=S['.text'];tx=d[trp:trp+trs]
P=S['.pdata'];pd=d[P[3]:P[3]+P[0]];F=sorted(struct.unpack_from('<III',pd,i) for i in range(0,len(pd)-11,12));FS=[f[0] for f in F]
def fn(r):
    j=bisect.bisect_right(FS,r)-1
    while j>=0 and not(F[j][0]<=r<F[j][1]): j-=1
    return F[j][0] if j>=0 else None
def calls(t):
    out=[]
    for m in re.finditer(rb'\xe8',tx):
        i=m.start()
        if ta+i+5+struct.unpack_from('<i',tx,i+1)[0]==t: out.append(ta+i)
    return out
if __name__=='__main__':
    for a in sys.argv[1:]:
        r=int(a,16);f=fn(r);cs=calls(f) if f else []
        print(hex(r),'func',hex(f or 0),'callers',len(cs),' '.join(hex(fn(c) or 0) for c in cs[:30]))
