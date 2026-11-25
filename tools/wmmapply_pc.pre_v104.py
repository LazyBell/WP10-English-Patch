import sys,os,json,struct
sys.path.insert(0,os.path.expanduser('~/tools'))
import wmmbuild
from wmmbuild import segs,repl,SEG
from wmm import decode
from tr import look,need,L
from wrap import wrap
from wmmapply import space as _space_sw
import wrap as _wrapmod, re as _re
_wrapmod.VAR=1300
HON={'さん':'','ちゃん':'','くん':'','君':'','様':'','さま':'','たん':'','殿':''}

_GNAMES=['Himari Aokusa','Ena Yuki','Haruka Shiino','Nanaka Shirasagi','Yumiko Mizumori','Wakaba Makino','Futaba Makino','Mansaku Seibu','Moegi Tachibana','Minori Komano','Natsumi Towada','Misora Yumeno','Kanon Takimiya','Yayoi Osaka','Yue Shimakura','Hitoshi Matoba','Masaki Otori']
_GREP=[(r'\bKikka Sho\b','Kikuka Sho'),(r'\bKikka\b','Kikuka'),(r'\bfavourite','favorite'),(r'\bFavourite','Favorite'),(r'\bhonour','honor'),(r'\bHonour','Honor'),(r'\bcolour','color'),(r'\bColour','Color'),(r'\btravelling','traveling'),(r'\bSprinters Stakes','Sprinters S.'),(r'\bHopeful Stakes','Hopeful S.'),(r'\bFebruary Stakes','February S.'),(r'(?<=[a-z]) Sensei\b','-sensei'),(r'^ Sensei\b','-sensei')]
for _n in _GNAMES:
    _a,_b=_n.split(' ');_GREP.append((r'\b'+_a+' '+_b+r'\b',_b+' '+_a))
_GREPC=[(__import__('re').compile(a),b) for a,b in _GREP]
def _gfix(t):
    for a,b in _GREPC: t=a.sub(b,t)
    return t
def reflow(m,bi):
    # spaces around colour markers ^04~N~ ... ^02
    m=_re.sub(rb'([A-Za-z0-9,.;:!?)\'"])(\^04~\d+~\x01")(?=[A-Za-z0-9"(\'])',rb'\1 \2',m)
    m=_re.sub(rb'(?<!\x0a)(\^02\x01")(?=[A-Za-z0-9("])',rb'\1 ',m)
    m=_re.sub(rb'(\x0a(?:\x1b[HK])?\x01") +',rb'\1',m)
    m=_re.sub(rb'\x0a(?:\x1b[HK])?\x01"([.,!?])(?=\x0a|\x05)',rb'\1',m)
    if bi!=19: return m
    m=_re.sub(rb' ?\x0a(?:\x1b[HK])?\x01"(?=[a-z])',b' \x01"',m)
    return m
def _isvar(b): return b'\x02' in b or b'\x01C' in b
def space(m,texts):
    ms=list(SEG.finditer(m)); out=list(texts); prevtxt=None
    for i,x in enumerate(ms):
        t=out[i]
        prev=m[(ms[i-1].end() if i else 0):x.start()]
        nxt=m[x.end():(ms[i+1].start() if i+1<len(ms) else len(m))]
        brk=any(c in prev for c in (b'\x0a',b'\x05',b'\x04'))
        if (i and ms[i-1].group(0)[2:3]==b'\x0a') or x.group(0)[2:3]==b'\x0a': brk=True
        if t:
            if not brk and _isvar(prev) and (t[0].isalnum() or t[0] in '("') and not __import__('re').match(r'(st|nd|rd|th)\b',t): t=' '+t
            elif not brk and prevtxt and prevtxt[-1] in '.!?,:;' and t[0].isalnum(): t=' '+t
            cut=min([j for j in (nxt.find(b'\x0a'),nxt.find(b'\x05')) if j>=0] or [len(nxt)])
            if _isvar(nxt[:cut]) and (t[-1].isalnum() or t[-1] in ',.:;!?)"'): t=t+' '
            t=_re.sub(r'([.!?])([A-Z])',r'\1 \2',t)
            out[i]=t
        if brk: prevtxt=None
        cur=t if t is not None else None
        if cur: prevtxt=cur
    return out
W=os.path.expanduser('~/work/')
TBL_RVA=0x3851600   # u64 bank file offsets in PC exe .data
def loadf(path,bankfile):
    d=open(path,'rb').read();B=json.load(open(bankfile));banks=[]
    for pos,cnt,size in B:
        bank=d[pos:pos+size];t=struct.unpack('<%dI'%cnt,bank[4:4+4*cnt])
        banks.append((pos,[bank[t[k]:(t[k+1] if k+1<cnt else size)] for k in range(cnt)]))
    return banks
def rstrip0(m): return m.rstrip(b'\0')
def main():
    sw=loadf(W+'WMM.DAT',W+'wmm_banks.json'); pc=loadf(W+'pc/WMM_jp.DAT',W+'pc/pc_banks.json')
    sd=L('segdict.json',{});ctx=L('ctx.json',{});tr=L('wmm_tr.json',{});b5=L('b5dict.json',{});b5c=L('pc/b5c_dict.json',{})
    for k,v in L('pc/segdict_pc.json',{}).items(): sd.setdefault(k,v)
    edits={};full=0;mapped=0;unm=0
    import glob as _g
    SEGO={};DUMP={}
    SEGJP=json.load(open(W+'pc/seg_jp_over.json',encoding='utf8')) if os.path.exists(W+'pc/seg_jp_over.json') else {}
    for f_ in sorted(_g.glob(W+'pc/seg_over/*.txt')):
        for ln in open(f_,encoding='utf8'):
            ln=ln.rstrip('\n')
            if not ln.strip() or ln.startswith('#') or '|' not in ln: continue
            key,txt=ln.split('|',1);b_,k_=key.split(':')
            SEGO[(int(b_),int(k_))]=[x.strip(' ') if False else x for x in txt.split(' ¦ ')]
    for bi,(pos,msgs) in enumerate(pc):
        swidx={}
        for k,m in enumerate(sw[bi][1]): swidx.setdefault(rstrip0(m),k)
        for k,m in enumerate(msgs):
            sk=swidx.get(rstrip0(m))
            if sk is None: unm+=1; sk=-1
            else: mapped+=1
            comm=bi==5 and (sk if sk>=0 else k)<722
            ss=segs(m);key=f'{bi}:{sk}'
            if not comm and sk>=0 and key in tr and len(tr[key])==len(ss): texts=tr[key]
            else:
                texts=[];ok=True
                for s in (decode(x) for x in ss):
                    if not need(s): texts.append(None);continue
                    v=(b5c.get(s) if comm else b5.get(s)) if bi==5 else look(sd,ctx,bi,sk,s)
                    if v is None and s in HON: v=HON[s]
                    if v is None and bi!=5 and s in sd: v=sd[s]
                    if v is None: ok=False;break
                    texts.append(v)
                if not ok or all(t is None for t in texts): continue
            if SEGJP:
                _js=[decode(x) for x in ss]
                if len(_js)==len(texts): texts=[(SEGJP[j] if (t is not None and j in SEGJP) else t) for t,j in zip(texts,_js)]
            if bi in (8,9):
                texts=[(_re.sub(r'^ - (?=[A-Za-z~])',': ',t) if isinstance(t,str) else t) for t in texts]
            if (bi,k) in SEGO:
                so=SEGO[(bi,k)]
                if len(so)==len(texts): texts=[(None if (t is None and x=='') else x) for t,x in zip(texts,so)]
                else: print('SEGO count mismatch',bi,k,len(so),len(texts))
            texts=[(_gfix(t) if isinstance(t,str) else t) for t in texts]
            DUMP[f'{bi}:{k}']=texts
            edits[(bi,k)]=wrap(reflow(repl(m,space(m,texts)),bi),bi);full+=1
    _LD=_re.compile(rb'((?:^|\x05|\n)(?:\x1b[HK])?\x01") - ([a-z])')
    for _k in list(edits):
        _m=edits[_k];_m2=_LD.sub(lambda x:x.group(1)+x.group(2).upper(),_m)
        if _m2!=_m: edits[_k]=_m2
    _VB=rb'(?:was|is|are|were|has|have|had|won|wins|will|can|could|would|should|did|does|seems|seemed|looks|looked|showed|shows|ran|runs|took|takes|got|gets|made|makes|became|becomes|may|might|must|also|still|already|just|really|finally|always|never|came|comes|went|goes|finished|beat|beats|lost|loses|kept|keeps|left|leaves|gave|gives|scored|earned|earns|ranked|reached|set|stands|stood|needs|wants|wanted|likes|loves|hates|knows|tried|tries|managed|hit|broke|took)'
    _DV1=_re.compile(rb'(\x02..|\^02|\x01C....)\x01" - (?:it|they|he|she) (?=' + _VB + rb'\b)',_re.S)
    _DV2=_re.compile(rb'(\x02..|\^02|\x01C....)\x01" - (?=' + _VB + rb'\b)',_re.S)
    _DV3=_re.compile(rb'(\x02..|\x01C....)\x01" - its ',_re.S)
    for _k in list(edits):
        if _k[0] in (20,):continue
        _m=edits[_k];_m2=_DV1.sub(lambda x:x.group(1)+b'\x01" ',_m);_m2=_DV2.sub(lambda x:x.group(1)+b'\x01" ',_m2);_m2=_DV3.sub(lambda x:x.group(1)+b"\x01\"'s ",_m2)
        if _m2!=_m: edits[_k]=_m2
    _DV4=_re.compile(rb"(\x02..|\^02|\x01C....)\x01\" - (?=(?:I|I'll|I'm|I'd|I've|let's|you|we|we'll|if|so|please|it's|that's|it'll|it'd|you've|glad|thanks|maybe|shall|when|how|what|thank)\b)",_re.S)
    for _k in list(edits):
        if _k[0] in (20,):continue
        _m=edits[_k];_m2=_DV4.sub(lambda x:x.group(1)+b'\x01", ',_m)
        if _m2!=_m: edits[_k]=_m2

    _DV5=_re.compile(rb'(\x02..|\^02|\x01C....)\x01" - (?=([a-z\']+))',_re.S)
    _V5=set(b"came comes went goes got gets gave gives took takes made makes ran runs won wins lost loses beat beats has had is was are were will would can could should may might must seems seemed looks looked showed shows keeps kept became becomes joined entered retired returned grew grows leads led stood stands sat says said told tells taught teaches asked asks wants wanted needs needed likes liked loves loved knows knew thinks thought feels felt hopes hoped tries tried brought brings bought buys sold sells called calls visited visits arrived arrives finished finishes started starts".split())
    def _dv5f(x):
        w=x.group(2)
        if w in _V5 or (w.endswith(b'ed') and len(w)>3): return x.group(1)+b'\x01" '
        return x.group(1)+b'\x01", '
    for _k in list(edits):
        if _k[0] in (20,):continue
        _m=edits[_k];_m2=_DV5.sub(_dv5f,_m)
        if _m2!=_m: edits[_k]=_m2
    _SNS=_re.compile(rb'(\x02..)\x01" ?Sensei(?=[ ,.!?\n])',_re.S)
    for _k in list(edits):
        _m=edits[_k];_m2=_SNS.sub(lambda x:x.group(1)+b'\x01"-sensei',_m)
        if _m2!=_m: edits[_k]=_m2
    import gl_build
    GL=gl_build.load()
    for k,e in GL.items():
        edits[(20,k)]=wrap(gl_build.build(pc[20][1][k],e),20)
    for (b_,k_),e in gl_build.load_over().items():
        edits[(b_,k_)]=wrap(gl_build.build(pc[b_][1][k_],e),b_)
    for b_,k_,o_,n_ in json.load(open(W+'pc/msg_fix.json')):
        o_=o_.encode('latin-1');n_=n_.encode('latin-1')
        if b_<0:
            hit=0
            for bb,(pp,mm) in enumerate(pc):
                for kk in range(len(mm)):
                    m_=edits.get((bb,kk),mm[kk])
                    if o_ in m_: edits[(bb,kk)]=m_.replace(o_,n_);hit+=1
            assert hit,o_
            continue
        m_=edits.get((b_,k_),pc[b_][1][k_])
        if o_ not in m_: print('MSGFIX miss',b_,k_,o_[:30]);continue
        edits[(b_,k_)]=m_.replace(o_,n_)
    TT={k.encode():v.encode() for k,v in json.load(open(W+'pc/gl/titles.json')).items()}
    for k in range(len(pc[20][1])):
        m=edits.get((20,k),pc[20][1][k])
        if b'\x02\x1d\xc8' not in m: continue
        m2=_re.sub(rb'\[([a-z]+)\]',lambda x:b'['+TT.get(x.group(1),x.group(1))+b']',m)
        if m2!=m: edits[(20,k)]=m2
    json.dump(DUMP,open(W+'pc/texts_dump.json','w'),ensure_ascii=False)
    out=bytearray();newpos=[]
    _GM={bytes.fromhex(a):bytes.fromhex(b) for a,b in json.load(open(W+'pc/gloss_map.json')).items()} if os.path.exists(W+'pc/gloss_map.json') else {}
    _GR=_re.compile(rb'\x02([\x10-\x19][\x64-\xff])')
    _gn=[0]
    def _gmap(m):
        def f(x):
            v=_GM.get(x.group(1))
            if v is None: return x.group(0)
            _gn[0]+=1;return b'\x02'+v
        return _GR.sub(f,m)
    for bi,(pos,msgs) in enumerate(pc):
        newpos.append(len(out));cnt=len(msgs);body=bytearray();offs=[]
        for k,m in enumerate(msgs):
            m=edits.get((bi,k),m)
            if _GM: m=_gmap(m)
            offs.append(4+4*cnt+len(body));body+=m
        out+=struct.pack('<I',cnt)+struct.pack('<%dI'%cnt,*offs)+body
        while len(out)%0x40: out+=b'\0'
    print('gloss links remapped',_gn[0]);open(W+'pc_out/WMM.DAT','wb').write(out)
    exe=open(os.path.expanduser('~/mnt/Winning post 10 pc/Winning Post 10 2026/WP10_2026.exe'),'rb').read()
    TFO=0x384f800; mp={p:n for (p,_),n in zip(pc,newpos)}; recs=[]; i=0
    while True:
        v=struct.unpack_from('<Q',exe,TFO+8*i)[0]
        if v not in mp: break
        recs.append((TBL_RVA+8*i,struct.pack('<Q',mp[v]).hex())); i+=1
    print('table entries',i)
    json.dump(recs,open(W+'pc/wmm_tbl.json','w'))
    tot=sum(len(m) for _,ms in pc for m in ms)
    print('msgs',tot and sum(len(ms) for _,ms in pc),'mapped',mapped,'unmapped',unm,'translated',full,'size',len(out))
main()
