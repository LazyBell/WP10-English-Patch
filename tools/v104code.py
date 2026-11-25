import os
W=os.path.expanduser('~/work/')
OD=open(os.path.expanduser('~/re/wp10_dec.exe'),'rb').read()
ND=open(W+'v104/wp10_104_dec.exe','rb').read()
TO=(0x400,0x400+0x2a01800); TN=(0x400,0x400+0x2a15a00)
def o(r): return r-0x1000+0x400
def cmap(r,verbose=False):
    """map a 1.0.1.1 .text rva to 1.0.4 by unique byte-window match; returns (newrva, how)"""
    res={}
    for a,b in ((-24,24),(-16,16),(0,32),(-32,0),(0,24),(-24,0),(0,16),(-16,0),(-12,12),(-40,40)):
        pat=OD[o(r)+a:o(r)+b]
        if len(pat)<12: continue
        i=ND.find(pat,*TN)
        if i==-1: continue
        if ND.find(pat,i+1,TN[1])!=-1: continue
        nr=i-a-0x400+0x1000
        res[nr]=res.get(nr,0)+1
    if not res: return None
    best=max(res,key=res.get)
    if len(res)>1 and verbose: print('ambiguous',hex(r),{hex(k):v for k,v in res.items()})
    return best
def cmap2(r):
    n=cmap(r)
    if n: return n,'exact'
    ds={}
    for k in list(range(1,40)):
        for s in (-1,1):
            q=cmap(r+s*k*0x30)
            if q: ds[q-(r+s*k*0x30)]=ds.get(q-(r+s*k*0x30),0)+1
        if len(ds)>=3 or sum(ds.values())>=6: break
    best=None
    for d in ds:
        a=OD[o(r)-32:o(r)+32]; b=ND[o(r+d)-32:o(r+d)+32]
        diff=sum(x!=y for x,y in zip(a,b))
        if best is None or diff<best[1]: best=(d,diff)
    if best and best[1]<=12: return r+best[0],'delta diff%d'%best[1]
    return None,'fail'
