# Map 1.0.1.1 exe data-section addresses (rva) to 1.0.4.0 by anchored byte matching.
import struct,json,os,bisect
W=os.path.expanduser('~/work/')
OLD=os.path.expanduser('~/mnt/Winning post 10 pc/Winning Post 10 2026/WP10_2026.exe')
NEW=W+'v104/WP10_2026.exe'
def sects(e):
    pe=struct.unpack_from('<I',e,0x3c)[0]; ns=struct.unpack_from('<H',e,pe+6)[0]; so=pe+24+struct.unpack_from('<H',e,pe+20)[0]; r={}
    for s in range(ns):
        nm,vs,va,rs,ra=struct.unpack_from('<8sIIII',e,so+40*s); r[nm.rstrip(b'\0').decode()]=(va,ra,rs)
    return r
od=open(OLD,'rb').read(); nd=open(NEW,'rb').read(); OS=sects(od); NS=sects(nd)
def r2o(S,r):
    for va,ra,rs in S.values():
        if va<=r<va+rs: return r-va+ra
def o2r(S,o):
    for va,ra,rs in S.values():
        if ra<=o<ra+rs: return o-ra+va
def sec_of(S,r):
    for n,(va,ra,rs) in S.items():
        if va<=r<va+rs: return n
class Mapper:
    def __init__(s): s.delta={}  # per section running delta
    def map(s,rva,nbytes=None,ctx=24,win=0x40000):
        n=sec_of(OS,rva); o=r2o(OS,rva)
        if n is None: return None
        d0=s.delta.get(n, NS[n][0]-OS[n][0])
        key=od[o:o+(nbytes or 16)]
        # try with growing context before/after for uniqueness near prediction
        pred=r2o(NS,rva+d0) if r2o(NS,rva+d0) is not None else o
        best=None
        for pre,post in ((ctx,ctx),(8,8),(0,0)):
            pat=od[o-pre:o+len(key)+post]
            lo=max(0,pred-pre-win); hi=pred-pre+win+len(pat)
            cands=[];i=nd.find(pat,lo,hi)
            while i!=-1 and len(cands)<50: cands.append(i+pre); i=nd.find(pat,i+1,hi)
            if cands:
                best=min(cands,key=lambda c:abs(c-pred)); break
        if best is None: return None
        nr=o2r(NS,best); s.delta[n]=nr-rva; return nr
if __name__=='__main__':
    m=Mapper(); print(hex(m.map(0x3851600,8) or 0))
