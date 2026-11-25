# Racing Glossary A-Z: reorder the 401-record term table (id,ptr) in exe .data and rewrite the tab start/count table.
import json,os,struct,re
W=os.path.expanduser('~/work/')
EXE=os.path.expanduser('~/mnt/Winning post 10 pc/Winning Post 10 2026/WP10_2026.exe')
def o2r(o): return o-0x384e200+0x3850000
def r2o(r): return r-0x2a03000+0x2a01c00 if r<0x3850000 else r-0x3850000+0x384e200
TAB_O=0x3aa3370; REC_O=0x3aa33d0; N=401; NSYM=10
OVR={'調教':'Training','対抗':'Rival Pick','史実調教':'Historical Training','ＳＰ史実調教':'SP Historical Training','軽め調教':'Light Training','芝':'Turf','重':'Soft','重馬場':'Soft Going','良':'Good Going','確定':'Official Result','関係性':'Relationship','去勢':'Castration','顕彰馬':'Hall of Fame Horse','審議':"Stewards' Inquiry",'単穴':'Dark Horse Pick','強め':'Hard Workout','手前':'Leading Leg','当歳':'Weanling','夏負け':'Summer Fatigue','逃げ':'Front-Runner','寝藁':'Bedding Straw','肺出血':'Lung Bleeding (EIPH)','跛行':'Lameness','肌馬':'Broodmare','馬齢':'Horse Age','坂路':'Hill Gallop','牝系':'Female Line','牝馬':'Filly / Mare','本命':'Favorite Pick','名牝':'Great Mare','誘導馬':'Lead Pony','落鉄':'Lost Shoe','蹄鉄':'Horseshoe','良血':'Blue Blood','連闘':'Back-to-Back Races','末脚':'Finishing Kick','斜行':'Veering','平場':'Ordinary Race','一杯':'Full Effort','馬柱':'Form Guide','無印':'Unmarked','毛色':'Coat Color','単勝':'Win Bet'}
EXTRA={'重':'Heavy','馬':'Gelding','鞭':'Whip','夢':'Dream','枠':'Draw'}
RANGES=[('#-B','0123456789AB'),('C-D','CD'),('E-F','EF'),('G-H','GH'),('I-L','IJKL'),('M-O','MNO'),('P-R','PQR'),('S','S'),('T-U','TU'),('V-Z','VWXYZ')]
def build(recs,T,enc,S,EXC,reorder=True):
    d=open(EXE,'rb').read()
    rows=[]
    for k in range(N):
        i,p=struct.unpack_from('<QQ',d,REC_O+16*k);va=p-0x140000000;o=r2o(va);jp=d[o:d.find(b'\0',o)].decode('cp932')
        en=OVR.get(jp) or T.get(jp) or EXTRA.get(jp)
        slot=S.get(va)
        inplace=(jp not in OVR and jp in T and slot is not None and va not in EXC and not (len(jp.encode('cp932'))<=2 and va%4!=0) and len(enc(T[jp]))<=slot)
        rows.append(dict(k=k,raw=d[REC_O+16*k:REC_O+16*k+16],jp=jp,en=en,inplace=inplace))
    if not reorder:
        lo=o2r(REC_O)
        for slot,r in enumerate(rows):
            if r['en'] and (r['jp'] in OVR or (r['jp'] in EXTRA and r['jp'] not in T)): recs.append((1,lo+16*slot+8,enc(r['en'])+b'\0'))
        return {}
    body=rows[:N-NSYM]
    for r in body: assert r['en'],r['jp']
    key=lambda r:(re.sub(r'[^a-z0-9]','',r['en'].lower()),r['k'])
    body.sort(key=key)
    def tab(r):
        c=re.sub(r'[^A-Za-z0-9]','',r['en'])[0].upper()
        for t,(lab,ls) in enumerate(RANGES):
            if c in ls: return t
        raise Exception(r['en'])
    tabs=[tab(r) for r in body];assert tabs==sorted(tabs)
    order=body+rows[N-NSYM:]
    # drop existing pointer relocs inside the table
    lo=o2r(REC_O);hi=lo+16*N
    recs[:]=[x for x in recs if not (x[0]==1 and lo<=x[1]<hi)]
    recs.append((0,lo,b''.join(r['raw'] for r in order)))
    pairs=[];s=0
    for t in range(10): c=tabs.count(t);pairs.append((s,c));s+=c
    pairs.append((s,NSYM))
    old=[struct.unpack_from('<II',d,TAB_O+8*t) for t in range(11)]
    assert old[-1][1]==NSYM and sum(c for _,c in old)==N,old
    recs.append((0,o2r(TAB_O),b''.join(struct.pack('<II',a,b) for a,b in pairs)))
    for slot,r in enumerate(order):
        if r['en'] and not r['inplace']: recs.append((1,lo+16*slot+8,enc(r['en'])+b'\0'))
    labels={}
    for jp,(lab,_) in zip(['あ行','か行','さ行','た行','な行','は行','ま行','や行','ら行','わ行'],RANGES): labels[jp]=lab
    json.dump({'tabs':[dict(label=RANGES[t][0],start=pairs[t][0],count=pairs[t][1],first=body[pairs[t][0]]['en'],last=body[pairs[t][0]+pairs[t][1]-1]['en']) for t in range(10)]},open(W+'pc/gloss_az.json','w'),indent=1)
    return labels
