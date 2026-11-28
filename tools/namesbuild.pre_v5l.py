# Builds WP10_EN_names.bin (format WPN3) for the add-on's old-save name converter (addon/names.inc).
# Sections (each sorted by FNV-1a hash of its key):
#   1 people  : JP surname[17]+given[17] -> English fields[17][17]   (from unb_patches_people.json, same English as new games)
#   2 kanji   : SJIS surname/given[17]+kind -> kana codes[14]       (people tables + name pools 0076/0344)
#   3 words   : kana codes[12] -> English[20]                        (horse-name dictionary, racing-word fixes)
#   4 farms   : SJIS farm name[13] -> English[12]                    (studbuild.py list)
#   5 clubs   : SJIS club name[16] -> English[16]                    (patched owner data + a few known clubs)
import json,struct,re,os,sys
W=os.path.expanduser('~/work/')
sys.path.insert(0,os.path.expanduser('~/tools'))
def fnv(b):
    h=2166136261
    for c in b: h^=c; h=(h*16777619)&0xffffffff
    return h
def kc(s): return bytes(0xfe if c=='ー' else ord(c)-0x30a0 for c in s)
# 1 people
P=[]
for k1,k2,e1,e2 in json.load(open(W+'names_tbl.json')):
    k=bytes.fromhex(k1).ljust(17,b'\0')+bytes.fromhex(k2).ljust(17,b'\0'); e=bytes.fromhex(e1).ljust(17,b'\0')[:17]+bytes.fromhex(e2).ljust(17,b'\0')[:17]
    P.append((fnv(k),k,e))
# real-life owner reps that the game stores without a reading (only ones we are sure of)
MAN={('岡田','繁幸'):('Okada',' Shigeyuki'),('吉田','晴哉'):('Yoshida',' Haruya'),('吉田','正志'):('Yoshida',' Masashi')}
have={k for _,k,_ in P}
for (a,b),(c,d) in MAN.items():
    k=a.encode('cp932').ljust(17,b'\0')+b.encode('cp932').ljust(17,b'\0')
    if k not in have: P.append((fnv(k),k,c.encode().ljust(17,b'\0')+d.encode().ljust(17,b'\0')))
P.sort(key=lambda r:r[0])
# 2 kanji readings
KM=json.load(open(W+'kanjimaps.json')); K=[]
for kind,name in ((1,'SUR'),(2,'GIV')):
    for k,v in KM[name].items():
        kb=bytes.fromhex(k); vb=bytes.fromhex(v)
        if len(kb)>16 or len(vb)>13: continue
        key=kb.ljust(17,b'\0')+bytes([kind]); K.append((fnv(key),key,vb.ljust(14,b'\0')))
K.sort(key=lambda r:r[0])
# 3 words
FIX={'ファーム':'Farm','スタッド':'Stud','レース':'Race','ブリーダーズ':'Breeders','ステーブルズ':'Stables'}
D={}
for k,v in FIX.items(): D[k]=v
for k,v,_ in json.load(open(W+'dict0005.json')):
    if not(k and v) or len(k)<2 or len(k)>12 or len(v)>19: continue
    if not all('ァ'<=c<='ヶ' or c=='ー' for c in k): continue
    if not re.fullmatch(r"[A-Za-z0-9 '.\-&]+",v): continue
    D.setdefault(k,v)
DD=[(fnv(kc(k).ljust(12,b'\0')),kc(k).ljust(12,b'\0'),v.encode().ljust(20,b'\0')) for k,v in D.items()]
DD.sort(key=lambda r:r[0])
# 4 farms
src=open(os.path.expanduser('~/tools/studbuild.py'),encoding='utf-8').read()
M=eval(re.search(r"M=(\{.*?\})\n",src,re.S).group(1)); F=[]
# well-known breeder places stored without a reading in old saves
for k,v in {'白老':'Shiraoi','社台':'Shadai','田口':'Taguchi','荻伏':'Ogifushi','小森':'Komori'}.items(): M.setdefault(k,v)
for k,v in M.items():
    kb=k.encode('cp932')
    if len(kb)>12 or len(v)>11: continue
    F.append((fnv(kb.ljust(13,b'\0')),kb.ljust(13,b'\0'),v.encode().ljust(12,b'\0')))
F.sort(key=lambda r:r[0])
# 5 clubs
C={bytes.fromhex(k):bytes.fromhex(v) for k,v in json.load(open(W+'clubs.json')).items()}
for k,v in {'社台RH':'Shadai RH','社台ＲＨ':'Shadai RH'}.items(): C.setdefault(k.encode('cp932'),v.encode())
CC=[(fnv(k.ljust(16,b'\0')),k.ljust(16,b'\0'),v[:13].ljust(16,b'\0')) for k,v in C.items() if len(k)<=13]
CC.sort(key=lambda r:r[0])
# 6 real horses: kana codes[20] -> English[32] (exact word choice the game uses, e.g. Lord Kanaloa)
RH=[]
for k,v in json.load(open(W+'realhorse_en.json')).items():
    kb=kc(k)
    if len(kb)>20 or len(v)>31 or not re.fullmatch(r"[A-Za-z0-9 '.\-&]+",v): continue
    RH.append((fnv(kb.ljust(20,b'\0')),kb.ljust(20,b'\0'),v.encode().ljust(32,b'\0')))
RH.sort(key=lambda r:r[0])
# 7 sire-line table names (kana codes[16] -> English codes[16]) from the lines patch
LP=[(fnv(bytes.fromhex(k)),bytes.fromhex(k),bytes.fromhex(v)) for k,v in json.load(open(W+'linepairs.json')).items()]
LP.sort(key=lambda r:r[0])
out=b'WPN5'+struct.pack('<7I',len(P),len(K),len(DD),len(F),len(CC),len(RH),len(LP))
for sec in (P,K,DD,F,CC,RH,LP): out+=b''.join(struct.pack('<I',h)+a+b for h,a,b in sec)
open(W+'WP10_EN_names.bin','wb').write(out)
print('lines',len(LP),'horses',len(RH),'people',len(P),'kanji',len(K),'words',len(DD),'farms',len(F),'clubs',len(CC),'bytes',len(out))
