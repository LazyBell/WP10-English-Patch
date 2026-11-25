# build WP10_EN.bin for the PC loader: in-place string writes, pointer relocations, WMM table
import json,os,struct,collections,unicodedata
W=os.path.expanduser('~/work/')
EXE=os.path.expanduser('~/mnt/Winning post 10 pc/Winning Post 10 2026/WP10_2026.exe')
d=open(EXE,'rb').read()
SECT=[(0x2a03000,0x2a01c00,0xe4c600),(0x3850000,0x384e200,0x31b800)]
def r2o(r):
    for va,ro,rs in SECT:
        if va<=r<va+rs: return r-va+ro
S=json.load(open(W+'pc/exe_strings.json'))
T=json.load(open(W+'translations.json'));T.update(json.load(open(W+'data_tr.json')));T.update(json.load(open(W+'pc/extra_tr.json')))
if os.path.exists(W+'pc/short_tr.json'): SH=json.load(open(W+'pc/short_tr.json'))
else: SH={}
REP={'’':"'",'‘':"'",'“':'"','”':'"','–':'-','—':'-','…':'...','×':'x','é':'e','è':'e','ō':'o','ū':'u','·':'.','°':' deg','½':'1/2','é':'e'}
def enc(s):
    s=''.join(REP.get(c,c) for c in s)
    s=unicodedata.normalize('NFKD',s).encode('ascii','ignore').decode()
    return s.encode('ascii')
ptr=collections.defaultdict(list)
for va,ro,rs in SECT:
    for i in range(0,rs-7,8):
        v=struct.unpack_from('<Q',d,ro+i)[0]-0x140000000
        if 0x2a03000<=v<0x3850000+0x12dd234: ptr[v].append(va+i)
EXC=set(json.load(open(W+'pc/exclude_rva.json')))
import sys as _sys;_sys.path.insert(0,os.path.expanduser('~/tools'))
from wrap import tw as _tw
def wrapnl(t,lim):
    out=[]
    for line in t.split('\n'):
        cur=''
        for w in line.split(' '):
            c=(cur+' '+w) if cur else w
            if cur and _tw(c)>lim: out.append(cur);cur=w
            else: cur=c
        out.append(cur)
    return '\n'.join(out)
for _k,_v in list(T.items()):
    if not isinstance(_v,str): continue
    if '●使用方法' in _k or '●注意事項' in _k: T[_k]=wrapnl(_v,2550)
    elif _v.startswith('Reward') and ('報酬' in _k): T[_k]=wrapnl(_v,2000)

recs=[];st=collections.Counter();longs=[]
for va,o,slot,jp in S:
    if jp not in T: continue
    if va in EXC or (len(jp.encode('cp932'))<=2 and va%4!=0): st['excluded']+=1; continue
    e=enc(T[jp])
    if len(e)<=slot:
        recs.append((0,va,e+b'\0')); st['inplace']+=1; continue
    if jp in SH and len(enc(SH[jp]))<=slot:
        recs.append((0,va,enc(SH[jp])+b'\0')); st['short']+=1
    if ptr.get(va):
        for p in ptr[va]: recs.append((1,p,e+b'\0'))
        st['reloc']+=1
    elif jp not in SH: longs.append((jp,T[jp],slot)); st['long_noptr']+=1
if os.path.exists(W+'pc/extra_rva.json'):
    for k,(jp,en) in json.load(open(W+'pc/extra_rva.json')).items():
        va=int(k,16);o=r2o(va);b=jp.encode('cp932')
        assert d[o:o+len(b)]==b,(k,jp)
        z=o+len(b)
        while d[z]==0: z+=1
        slot=z-o-1;e=enc(en)
        assert len(e)<=slot,(k,en,slot)
        recs.append((0,va,e+b'\0'));st['extra_rva']+=1
import sys;sys.path.insert(0,os.path.expanduser('~/tools'));import glosspatch
GLOSS_AZ=True
if not GLOSS_AZ and os.path.exists(W+'pc/gloss_map.json'): os.remove(W+'pc/gloss_map.json')
_lab=glosspatch.build(recs,T,enc,{va:sl for va,o,sl,jp in S},EXC,reorder=GLOSS_AZ)
if _lab:
    _vas={va:_lab[jp] for va,o,sl,jp in S if jp in _lab and len(_lab[jp])<sl}
    recs[:]=[x for x in recs if not (x[0]==0 and x[1] in _vas)]
    for va,l in _vas.items(): recs.append((0,va,l.encode()+b'\0'))
    print('gloss tabs',_vas)
for rva,h in json.load(open(W+'pc/wmm_tbl.json')): recs.append((0,rva,bytes.fromhex(h)))
out=bytearray(b'WPEN'+struct.pack('<I',len(recs)))
for t,rva,data in recs: out+=struct.pack('<BII',t,rva,len(data))+data
open(W+'pc_out/WP10_EN.bin','wb').write(out)
json.dump(longs,open(W+'pc/long_noptr.json','w'),ensure_ascii=False,indent=0)
print(st,len(recs),len(out))
