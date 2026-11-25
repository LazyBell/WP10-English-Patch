# Build v104/exe_strings.json: long strings (>=6 bytes) = every zero-bounded occurrence in the new exe;
# short strings only where the old->new mapping is verified by surrounding bytes.
import json,os,sys,collections
sys.path.insert(0,os.path.expanduser('~/tools'))
from v104map import *
S=json.load(open(W+'pc/exe_strings.json')); RM=json.load(open(W+'v104/rva_map.json'))
EXC=set(json.load(open(W+'pc/exclude_rva.json')))
excl_jp={x[3] for x in S if x[0] in EXC and len(x[3].encode('cp932'))>=6}
DS=[(NS[n][1],NS[n][1]+NS[n][2]) for n in ('.rdata','.data')]
def slot(no,n):
    z=no+n
    while z<len(nd) and nd[z]==0: z+=1
    return z-no-1
out={};longs=set();short_ok=0;short_drop=0;pend=[]
for va,o,sl,jp in S:
    b=jp.encode('cp932')
    if len(b)>=6:
        if jp in longs: continue
        longs.add(jp)
        for lo,hi in DS:
            i=nd.find(b'\0'+b+b'\0',lo,hi)
            while i!=-1:
                no=i+1; nr=o2r(NS,no)
                out[nr]=[nr,no,slot(no,len(b)),jp]
                i=nd.find(b'\0'+b+b'\0',i+1,hi)
    else:
        nr=RM.get(str(va))
        if nr is None: short_drop+=1; continue
        no=r2o(NS,nr); good=False
        for pre,post in ((16,16),(16,0),(0,16),(8,8),(4,4)):
            if od[o-pre:o+len(b)+post]==nd[no-pre:no+len(b)+post]: good=True;break
        if good and nd[no:no+len(b)+1]==b+b'\0': out[nr]=[nr,no,slot(no,len(b)),jp]; short_ok+=1
        else: pend.append((va,o,jp,b))
# second pass: anchor short strings on nearby verified entries (old rva -> new rva)
import bisect
VER_={}
for va,o,sl,jp in S:
    nr=RM.get(str(va))
    if nr is None: continue
    b=jp.encode('cp932'); no=r2o(NS,nr)
    if nd[no:no+len(b)+1]==b+b'\0' and (len(b)>=6 or nr in out): VER_[va]=nr
K=sorted(VER_)
for va,o,jp,b in pend:
    i=bisect.bisect_left(K,va); hit=None
    for j in (i-1,i,i-2,i+1,i-3,i+2):
        if not (0<=j<len(K)) or K[j]==va: continue
        a=K[j]
        if abs(a-va)>0x200: continue
        lo,hi=min(a,va),max(a,va)+len(b)+1
        oo=r2o(OS,lo); no=r2o(NS,VER_[a]+(lo-a))
        if od[oo:oo+hi-lo]==nd[no:no+hi-lo]: hit=VER_[a]+(va-a);break
    if hit is None and len(b)>=3 and va%4==0 and od[o-1]==0:
        nr=RM.get(str(va))
        if nr is not None and nr%4==0:
            no=r2o(NS,nr)
            if nd[no-1]==0 and nd[no:no+len(b)+1]==b+b'\0' and slot(no,len(b))==slot(o,len(b)) if False else (nd[no-1]==0 and nd[no:no+len(b)+1]==b+b'\0'): hit=nr
    if hit is None: short_drop+=1; continue
    no=r2o(NS,hit); out[hit]=[hit,no,slot(no,len(b)),jp]; short_ok+=1
# third pass: short strings whose old entries were exactly all aligned zero-bounded occurrences -> take all in new
ODS=[(OS[n][1],OS[n][1]+OS[n][2]) for n in ('.rdata','.data')]
def occ(d,SS,DSx,b):
    r=[]
    for lo,hi in DSx:
        i=d.find(b'\0'+b+b'\0',lo,hi)
        while i!=-1:
            if (o2r(SS,i+1))%4==0: r.append(i+1)
            i=d.find(b'\0'+b+b'\0',i+1,hi)
    return r
byjp=collections.defaultdict(set)
for va,o,sl,jp in S:
    if len(jp.encode('cp932'))<6 and va not in EXC: byjp[jp].add(o)
add3=0
for jp,os_ in byjp.items():
    b=jp.encode('cp932')
    if len(b)<4: continue
    oo=set(occ(od,OS,ODS,b))
    if oo and oo<=os_:
        for no in occ(nd,NS,DS,b):
            nr=o2r(NS,no)
            if nr not in out: out[nr]=[nr,no,slot(no,len(b)),jp]; add3+=1
print('third pass added',add3)
# fourth pass: any translated string occurrence in the new exe that the game code/data actually references
_T=json.load(open(W+'translations.json'));_T.update(json.load(open(W+'data_tr.json')));_T.update(json.load(open(W+'pc/extra_tr.json')))
if os.path.exists(W+'v104/extra_tr.json'): _T.update(json.load(open(W+'v104/extra_tr.json')))
_CR={tg for _,tg in json.load(open(W+'v104/code_refs_full.json'))}
import struct as _st
for n_ in ('.rdata','.data'):
    va_,ra_,rs_=NS[n_]
    for i in range(ra_,ra_+rs_-7,8):
        v=_st.unpack_from('<Q',nd,i)[0]-0x140000000
        if 0x2a17000<=v<0x3867000+0x12df000: _CR.add(v)
oldjp={x[3] for x in S}
add4=0
for r in sorted(_CR):
    if r in out: continue
    no=r2o(NS,r)
    if no is None or (nd[no-1]!=0 and r%4!=0): continue
    e=nd.find(b'\0',no,no+4000)
    if e<=no: continue
    try: jp=nd[no:e].decode('cp932')
    except: continue
    if jp in _T and jp in oldjp:
        out[r]=[r,no,slot(no,e-no),jp]; add4+=1
print('fourth pass (referenced) added',add4)
res=sorted(out.values())
json.dump(res,open(W+'v104/exe_strings.json','w'),ensure_ascii=False)
json.dump(sorted(excl_jp),open(W+'v104/exclude_jp.json','w'),ensure_ascii=False)
print('entries',len(res),'short ok',short_ok,'short dropped',short_drop)
