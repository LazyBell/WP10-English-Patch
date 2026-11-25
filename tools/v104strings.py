import json,os,sys,time
sys.path.insert(0,os.path.expanduser('~/tools'))
from v104map import *
S=json.load(open(W+'pc/exe_strings.json'))
DS=[(NS[n][1],NS[n][1]+NS[n][2]) for n in ('.rdata','.data')]
def gfind(b,pred):
    c=[]
    for lo,hi in DS:
        i=nd.find(b'\0'+b+b'\0',lo,hi)
        while i!=-1: c.append(i+1); i=nd.find(b'\0'+b+b'\0',i+1,hi)
    if not c: return None
    return min(c,key=lambda x:abs(x-pred))
m=Mapper(); out=[]; bad=[]; RM={}; t=time.time(); g=0
for va,o,slot,jp in S:
    b=jp.encode('cp932')
    nr=m.map(va,len(b)+1,ctx=16,win=0x20000)
    no=r2o(NS,nr) if nr else None
    if no is None or nd[no:no+len(b)+1]!=b+b'\0':
        if len(b)>=4:
            pred=r2o(NS,va+m.delta.get(sec_of(OS,va),0)) or o
            no=gfind(b,pred)
            if no is None: bad.append((va,jp)); continue
            nr=o2r(NS,no); g+=1
        else: bad.append((va,jp)); continue
    z=no+len(b)
    while z<len(nd) and nd[z]==0: z+=1
    out.append([nr,no,z-no-1,jp]); RM[str(va)]=nr
json.dump(out,open(W+'v104/exe_strings.json','w'),ensure_ascii=False)
json.dump(bad,open(W+'v104/str_bad.json','w'),ensure_ascii=False)
import bisect
_keys=sorted(int(k) for k in RM)
def anchor(va,n):
    i=bisect.bisect_right(_keys,va)
    for j in (i-1,i-2,i-3,i,i+1,i+2):
        if 0<=j<len(_keys):
            a=_keys[j]; na=RM[str(a)]
            lo,hi=min(a,va),max(a,va)+n
            oo=r2o(OS,lo); no=r2o(NS,na+(lo-a))
            if abs(va-a)<0x400 and od[oo:oo+hi-lo]==nd[no:no+hi-lo]: return na+(va-a)
    return None
for k,(jp,en) in json.load(open(W+'pc/extra_rva.json')).items():
    va=int(k,16); b=jp.encode('cp932'); nr=anchor(va,len(b)+1)
    if nr: RM[str(va)]=nr
    else: print('extra miss',k,jp); RM.pop(str(va),None)
for va in json.load(open(W+'pc/exclude_rva.json')):
    nr=anchor(va,4)
    if nr: RM[str(va)]=nr
json.dump(RM,open(W+'v104/rva_map.json','w'))
print(len(S),len(out),'global',g,'bad',len(bad),round(time.time()-t),'s')
