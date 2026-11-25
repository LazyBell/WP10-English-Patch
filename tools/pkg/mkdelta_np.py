import sys,struct,numpy as np
def runs(a,b,gap=64):
    n=len(b);m=min(len(a),n)
    A=np.frombuffer(a,dtype=np.uint8,count=m);B=np.frombuffer(b,dtype=np.uint8,count=m)
    idx=np.flatnonzero(A!=B)
    if n>m: idx=np.concatenate([idx,np.arange(m,n)])
    if len(idx)==0: return []
    brk=np.flatnonzero(np.diff(idx)>gap+1)
    starts=np.concatenate([[idx[0]],idx[brk+1]]);ends=np.concatenate([idx[brk],[idx[-1]]])+1
    return list(zip(starts.tolist(),ends.tolist()))
def make(a,b,path):
    R=runs(a,b);out=bytearray(b'WPD1'+struct.pack('<QQI',len(a),len(b),len(R)))
    for s,e in R: out+=struct.pack('<QI',s,e-s)+b[s:e]
    open(path,'wb').write(out);return len(R),len(out)
a=open(sys.argv[1],'rb').read();b=open(sys.argv[2],'rb').read()
print('fwd',make(a,b,sys.argv[3]));print('undo',make(b,a,sys.argv[4]))
