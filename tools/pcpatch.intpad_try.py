# build WP10_EN.bin for the PC loader: in-place string writes, pointer relocations, WMM table
import json,os,struct,collections,unicodedata
W=os.path.expanduser('~/work/')
EXE=os.path.expanduser('~/mnt/Desktop/WINNING POST 10 TRANSLATION/Winning post 10 pc 1.01/Winning Post 10 2026/WP10_2026.exe')
d=open(EXE,'rb').read()
SECT=[(0x2a03000,0x2a01c00,0xe4c600),(0x3850000,0x384e200,0x31b800)]
VER=os.environ.get('WPVER','')
if VER:
    EXE=W+'v104/WP10_2026.exe'; d=open(EXE,'rb').read()
    SECT=[(0x2a17000,0x2a15e00,0xe4f800),(0x3867000,0x3865600,0x31be00)]
    V104MAP=json.load(open(W+'v104/rva_map.json'))
def r2o(r):
    for va,ro,rs in SECT:
        if va<=r<va+rs: return r-va+ro
S=json.load(open(W+('v104/' if VER else 'pc/')+'exe_strings.json'))
T=json.load(open(W+'translations.json'));T.update(json.load(open(W+'data_tr.json')));T.update(json.load(open(W+'pc/extra_tr.json')))
if os.path.exists(W+'v104/extra_tr.json'): T.update(json.load(open(W+'v104/extra_tr.json')))   # JP-keyed: valid for both versions
from oxfix import oxfix as _ox
T={k:_ox(v) for k,v in T.items()}
# popularity/Umasona comment bubbles: the game splits them into 2 lines near the middle (mid-word in English).
# Put our own line break at the space nearest the middle (same length, so slots still fit).
if os.path.exists(W+'pc/bubble_keys.json') and not os.environ.get('NOBUBBLE'):
    import re as _rb
    def _bnl(v):
        if '\n' in v: return v
        vis=[];j=0
        while j<len(v):
            m=_rb.match(r'\^04~\d+~|\^02',v[j:])
            if m: j+=len(m.group());continue
            vis.append(j);j+=1
        n=len(vis);best=None
        for vi,j in enumerate(vis):
            if v[j]==' ' and 0<vi<n-1:
                sc=abs(vi-n/2)
                if best is None or sc<best[0]: best=(sc,j)
        return v if best is None else v[:best[1]]+'\n'+v[best[1]+1:]
    if not os.environ.get('BUBBLENL'):
        # game wraps bubbles itself at half the pixel width; pad with spaces so the split lands on a word gap
        from PIL import ImageFont as _IF
        _fnt=_IF.truetype('/usr/share/fonts/truetype/liberation/LiberationSans-Regular.ttf',100)
        _SP=_fnt.getlength(' ')
        def _bnl(v):
            if '\n' in v: return v
            toks=_rb.findall(r'\^04~\d+~|\^02|.',v)
            vis=[(i,t) for i,t in enumerate(toks) if len(t)==1]
            ws=[_fnt.getlength(t) for i,t in vis]
            T=sum(ws); _tg=sum(1 for t in toks if len(t)>1)*float(os.environ.get('BUBBLE_TAGW','50'))
            # padding only inside the chosen word gap (the horse fan screen drops trailing spaces):
            # gap must sit left of the centre; R spaces put the game's half-width split 1.5 spaces before the gap end
            best=None;acc=0
            for k,(i,t) in enumerate(vis):
                if t==' ' and 0<k<len(vis)-1:
                    wa=acc;wb=T-acc-ws[k]
                    if wa<=wb+_tg and (best is None or (wb+_tg-wa)<best[0]): best=(wb+_tg-wa,i,wa,wb)
                acc+=ws[k]
            if best is None: return v
            _,i,wa,wb=best
            R=int(round((wb+_tg-wa)/_SP+3))
            if R>12: return v
            toks[i]=' '*max(R,2)
            return ''.join(toks)
    _bk=json.load(open(W+'pc/bubble_keys.json'));_bn=0
    for _k in _bk:
        if _k in T: T[_k]=_bnl(T[_k]);_bn+=1
    print('bubble line breaks',_bn)
# money: keep the game's original Japanese money display (oku/man/en) - user request 2026-11-25
import re as _re
_MONEY=_re.compile(r'^[\s\d\uff10-\uff19%dlkxsu\-,.\uff5e+\uff0b\u3000]*(?:[\u5104\u4e07\u5186][\s\d\uff10-\uff19%dlkxsu\-,.\uff5e+\uff0b\u3000]*)+$')
_mk=[k for k in T if _MONEY.match(k)]
for _k in _mk: del T[_k]
print('money strings kept Japanese:',len(_mk))
if os.path.exists(W+'pc/short_tr.json'): SH=json.load(open(W+'pc/short_tr.json'))
else: SH={}
REP={'’':"'",'‘':"'",'“':'"','”':'"','–':'-','—':'-','…':'...','×':'x','é':'e','è':'e','ō':'o','ū':'u','·':'.','°':' deg','½':'1/2','é':'e'}
_UMUL={'K':1e3,'M':1e6,'B':1e9}
def _usd(s):
    # exe text was written at 1 yen = $0.01; show real dollars at 159 yen = $1 (whole dollars)
    if '$' not in s: return s
    def f(m):
        n=float(m.group(1).replace(',',''))*_UMUL.get(m.group(2) or '',1)
        if n<100: return m.group(0)
        return '$'+format(int(round(n*100/159.0)),',')
    return _re.sub(r'\$([0-9][0-9,]*(?:\.[0-9]+)?)([KMB])?(?![0-9])',f,s)
def enc(s):
    s=_usd(s)
    s=''.join(REP.get(c,c) for c in s)
    s=unicodedata.normalize('NFKD',s).encode('ascii','ignore').decode()
    return s.encode('ascii')
ptr=collections.defaultdict(list)
for va,ro,rs in SECT:
    for i in range(0,rs-7,8):
        v=struct.unpack_from('<Q',d,ro+i)[0]-0x140000000
        if SECT[0][0]<=v<SECT[1][0]+0x12df000: ptr[v].append(va+i)
EXC=set(json.load(open(W+'pc/exclude_rva.json')))
if VER:
    EXC={V104MAP[str(x)] for x in EXC if str(x) in V104MAP}
    _XJ=set(json.load(open(W+'v104/exclude_jp.json')))
    EXC|={va for va,o,sl,jp in json.load(open(W+'v104/exe_strings.json')) if jp in _XJ}
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
CR_FULL={'血統'}  # short in place, but code refs get the full text
CODEREL=[]
_CRBY={}
if VER:
    for _ir,_tg in json.load(open(W+'v104/code_refs_full.json')): _CRBY.setdefault(_tg,[]).append((_ir,_tg))
_REFSET=set()
if VER: _REFSET={tg for _,tg in json.load(open(W+'v104/code_refs_full.json'))}|set(ptr.keys())
if VER:
    import bisect as _bs
    _CR=json.load(open(W+'v104/code_refs_full.json'))
    def _iszero(r):
        q=r2o(r)
        return q is not None and d[q]==0 and d[q-1]==0
    # only refs to real (non-empty) strings cap a slot; refs to empty strings "" in padding are redirected instead
    _REFS=sorted({tg for _,tg in _CR}|set(ptr.keys()))  # never overwrite bytes the game references (strings, empty strings, table ends)
    def _cap(va,slot):
        k=_bs.bisect_right(_REFS,va)
        if k<len(_REFS) and _REFS[k]<=va+slot: return _REFS[k]-va-1
        return slot
    if not os.environ.get('NOCAP'): S=[[va,o,_cap(va,slot),jp] for va,o,slot,jp in S]
for va,o,slot,jp in S:
    if jp not in T: continue
    if va in EXC or (len(jp.encode('cp932'))<=2 and va%4!=0 and not (VER and va in _REFSET)): st['excluded']+=1; continue
    e=enc(T[jp])
    if len(e)<=slot:
        recs.append((0,va,e+b'\0')); st['inplace']+=1; continue
    if jp in SH and len(enc(SH[jp]))<=slot:
        recs.append((0,va,enc(SH[jp])+b'\0')); st['short']+=1
    if ptr.get(va):
        for p in ptr[va]: recs.append((1,p,e+b'\0'))
        st['reloc']+=1
    elif jp not in SH or jp in CR_FULL:
        if jp not in SH: longs.append((jp,T[jp],slot)); st['long_noptr']+=1
        if VER:
            for ir,tg in _CRBY.get(va,[]): CODEREL.append((ir,e+b'\0'))
if os.path.exists(W+'pc/extra_rva.json'):
    for k,(jp,en) in json.load(open(W+'pc/extra_rva.json')).items():
        va=int(k,16)
        if VER:
            if str(va) not in V104MAP: print('extra_rva unmapped',k,jp); continue
            va=V104MAP[str(va)]
        o=r2o(va);b=jp.encode('cp932')
        assert d[o:o+len(b)]==b,(k,jp)
        z=o+len(b)
        while d[z]==0: z+=1
        slot=z-o-1;e=enc(en)
        if len(e)>slot: print('extra_rva no fit',k,en,slot); continue
        recs.append((0,va,e+b'\0'));st['extra_rva']+=1
if os.path.exists(W+'v104/extra_rva104.json'):
    _INV104={v:int(k) for k,v in json.load(open(W+'v104/rva_map.json')).items()} if not VER else None
    for k,(jp,en) in json.load(open(W+'v104/extra_rva104.json')).items():
        va=int(k,16)
        if not VER:
            if va not in _INV104: print('extra_rva104 no 1.0.1.1 match',k,jp); continue
            va=_INV104[va]
        o=r2o(va);b=jp.encode('cp932')
        if d[o:o+len(b)]!=b: print('extra_rva104 mismatch',k,jp);continue
        z=o+len(b)
        while d[z]==0: z+=1
        slot=z-o-1;e=enc(en)
        if len(e)>slot: print('extra_rva104 no fit',k,en,slot);continue
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
for rva,h in json.load(open(W+('v104/' if VER else 'pc/')+'wmm_tbl.json')): recs.append((0,rva,bytes.fromhex(h)))
if VER:
    # empty-string refs that fall inside text we overwrite -> point them at a safe empty string
    _rg=sorted((rva,rva+len(dt)) for tt,rva,dt in recs if tt==0 and rva<0x3867000)  # text strings in .rdata only (not glossary/WMM tables in .data)
    _st=[x[0] for x in _rg]
    def _inside(tg):
        k=_bs.bisect_right(_st,tg)-1
        return k>=0 and _rg[k][0]<tg<_rg[k][1]
    _safe=None
    for _,tg in _CR:
        if _iszero(tg) and not _inside(tg) and not _inside(tg-1) and tg>=0x2a17000 and tg<0x3867000: _safe=tg;break
    fixes=[]
    for ir,tg in _CR:
        if _inside(tg): fixes.append((ir,tg))
    pfix=[v for v in ptr if _inside(v)]
    # (data pointers to empty strings are left alone: too easy to hit array end-pointers)
    json.dump({'safe':_safe,'code':fixes,'ptr':pfix},open(W+'v104/empty_fix.json','w'))
    print('empty-string code refs to redirect',len(fixes),'data ptrs',len(pfix),'safe',hex(_safe))
out=bytearray(b'WPEN'+struct.pack('<I',len(recs)))
for t,rva,data in recs: out+=struct.pack('<BII',t,rva,len(data))+data
os.makedirs(W+('pc_out104' if VER else 'pc_out'),exist_ok=True);open(W+('pc_out104' if VER else 'pc_out')+'/WP10_EN.bin','wb').write(out)
if VER: json.dump([[ir,dt.decode('latin-1')] for ir,dt in CODEREL],open(W+'v104/coderel.json','w'))
json.dump(longs,open(W+('v104/' if VER else 'pc/')+'long_noptr.json','w'),ensure_ascii=False,indent=0)
print(st,len(recs),len(out))
