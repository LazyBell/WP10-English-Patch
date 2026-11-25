import sys,struct,os
def runs(a,b,gap=64):
    # yield (off,len) regions where b differs from a (over len(b)), merged by gap
    n=len(b);la=len(a);i=0;CH=4096;out=[]
    cur=None
    for blk in range(0,n,CH):
        x=a[blk:blk+CH];y=b[blk:blk+CH]
        if x==y: continue
        for j in range(len(y)):
            k=blk+j
            if k>=la or a[k]!=y[j]:
                if cur and k-cur[1]<=gap: cur[1]=k+1
                else:
                    if cur: out.append(tuple(cur))
                    cur=[k,k+1]
    if cur: out.append(tuple(cur))
    return out
def make(a,b,path):
    R=runs(a,b);out=bytearray(b'WPD1'+struct.pack('<QQI',len(a),len(b),len(R)))
    for s,e in R: out+=struct.pack('<QI',s,e-s)+b[s:e]
    open(path,'wb').write(out);return len(R),len(out)
if __name__=='__main__':
    a=open(sys.argv[1],'rb').read();b=open(sys.argv[2],'rb').read()
    print('fwd',make(a,b,sys.argv[3]));print('undo',make(b,a,sys.argv[4]))
