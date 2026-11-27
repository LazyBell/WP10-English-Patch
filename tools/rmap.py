# map 1.0.4 rvas -> 1.0.1.1 rvas. code: unique byte-window match. data: via a rip-relative reference in code.
import os,struct,sys,re
OD=open(os.path.expanduser('~/re/wp10_dec.exe'),'rb').read()          # 1.0.1.1
ND=open(os.path.expanduser('~/work/v104/wp10_104_dec.exe'),'rb').read() # 1.0.4
def secs(d):
    pe=struct.unpack('<I',d[0x3c:0x40])[0]; n=struct.unpack('<H',d[pe+6:pe+8])[0]; so=pe+24+struct.unpack('<H',d[pe+20:pe+22])[0]
    return [struct.unpack('<8sIIII',d[so+40*i:so+40*i+24]) for i in range(n)]
SO,SN=secs(OD),secs(ND)
def r2o(S,r):
    for nm,vs,va,rs,ro in S:
        if va<=r<va+max(vs,rs): return r-va+ro
def o2r(S,o):
    for nm,vs,va,rs,ro in S:
        if ro<=o<ro+rs: return o-ro+va
TN=(0x400,0x400+0x2a15a00); TO=(0x400,0x400+0x2a01800)
def code(r,mask=None):
    """1.0.4 text rva -> 1.0.1.1 rva. mask: (start,len) bytes relative to r to wildcard (rel32 fields)"""
    on=r2o(SN,r); res={}
    for a,b in ((-24,24),(-16,16),(0,32),(-32,0),(0,24),(-24,0),(0,16),(-16,0),(-12,12),(-40,40),(-8,8),(0,12)):
        pat=ND[on+a:on+b]
        if len(pat)<12: continue
        # wildcard rel32 of calls/jmps (E8/E9 xx xx xx xx) and rip-rel disps can differ: use regex
        rx=b''; i=0; p=pat
        while i<len(p):
            c=p[i]
            if c in (0xe8,0xe9) and i+5<=len(p): rx+=re.escape(bytes([c]))+b'....'; i+=5; continue
            rx+=re.escape(bytes([c])); i+=1
        ms=[m.start() for m in re.finditer(rx,OD[TO[0]:TO[1]],re.S)][:2]
        if len(ms)!=1: continue
        nr=o2r(SO,ms[0]+TO[0])-a
        res[nr]=res.get(nr,0)+1
    if not res: return None
    return max(res,key=res.get)
def data(t,tries=6):
    """1.0.4 data rva -> 1.0.1.1 via rip-relative reference"""
    out={}
    tn=ND[TN[0]:TN[1]]
    hits=0
    for extra in (0,1,4):
        for m in range(TN[0],TN[1]-4):
            pass
        break
    import numpy as np
    a=np.frombuffer(ND[TN[0]:TN[1]-((TN[1]-TN[0])%4)],dtype=np.uint8)
    # scan all offsets for int32 == t-(rva+4+extra)
    arr=np.frombuffer(ND,dtype=np.uint8)
    for extra in (0,1,4):
        base=TN[0]
        n=TN[1]-TN[0]-4
        v=(arr[base:base+n].astype(np.int64)|(arr[base+1:base+1+n].astype(np.int64)<<8)|(arr[base+2:base+2+n].astype(np.int64)<<16)|(arr[base+3:base+3+n].astype(np.int64)<<24))
        v=np.where(v>=2**31,v-2**32,v)
        rv=np.arange(n,dtype=np.int64)+base-0x400+0x1000
        idx=np.nonzero(v==t-(rv+4+extra))[0]
        for i in idx[:tries]:
            p=int(i)+base; pr=o2r(SN,p)
            # map instruction: use window starting after disp
            for s in (4+extra,-8):
                q=code(pr+s) if s>0 else None
                if q is None: q=code(pr-8); s=-8
                if q is None: continue
                po=r2o(SO,q-s)
                disp=struct.unpack('<i',OD[po:po+4])[0]
                tgt=q-s+4+extra+disp
                out[tgt]=out.get(tgt,0)+1; break
        if out: break
    if not out: return None
    return max(out,key=out.get)
if __name__=='__main__':
    for x in sys.argv[1:]:
        k,v=x.split(':') if ':' in x else ('c',x); r=int(v,16)
        m=code(r) if k=='c' else data(r)
        print(k,hex(r),'->',hex(m) if m else None)
