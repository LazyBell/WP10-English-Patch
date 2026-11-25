import struct,os
W=os.path.expanduser('~/work/')
N=5584;B=11200
def load(i):
    d=open(W+'unb3/%04d.bin'%i,'rb').read()
    o=struct.unpack('<%dH'%N,d[:2*N])
    return [d[B+2*v:d.index(b'\0',B+2*v)].decode('cp932','replace') for v in o]
def pack(strs,i):
    d=open(W+'unb3/%04d.bin'%i,'rb').read()
    out=bytearray(d[:B]); body=bytearray(); offs=[]
    seen={}
    for s in strs:
        b=s.encode('cp932')+b'\0'
        if b in seen: offs.append(seen[b]); continue
        if len(b)%2: b+=b'\0'
        if len(body)%2: body+=b'\0'
        seen[s.encode('cp932')+b'\0']=len(body)//2
        offs.append(len(body)//2); body+=b
    assert offs[-1]<65536
    out[:2*N]=struct.pack('<%dH'%N,*offs)
    assert len(out)+len(body)<=len(d),(i,len(out)+len(body),len(d))
    return bytes(out+body)
