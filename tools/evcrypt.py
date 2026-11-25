import struct,sys
M=0x5B1A7851;K=0xCE4E
def key(c): return ((c*M+K)>>16)&0xffffffff
def dec(b):
    seed=struct.unpack('<I',b[:4])[0]; n=(len(b)-4)//4
    w=struct.unpack('<%dI'%n,b[4:4+n*4]); out=[]; prev=seed
    for c in w: out.append(c^key(prev)); prev=c
    return b[:4]+struct.pack('<%dI'%n,*out)+b[4+n*4:]
def enc(b):
    seed=struct.unpack('<I',b[:4])[0]; n=(len(b)-4)//4
    w=struct.unpack('<%dI'%n,b[4:4+n*4]); out=[]; prev=seed
    for p in w: c=p^key(prev); out.append(c); prev=c
    return b[:4]+struct.pack('<%dI'%n,*out)+b[4+n*4:]
if __name__=='__main__':
    b=open(sys.argv[2],'rb').read()
    open(sys.argv[3],'wb').write(dec(b) if sys.argv[1]=='d' else enc(b))
