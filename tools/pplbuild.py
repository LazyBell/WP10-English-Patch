import sys,os,json,re
sys.path.insert(0,os.path.expanduser('~/tools'))
import kalign
sys.path.insert(0,os.path.expanduser('~/tools'))
from ppl import records
from hk import dec
from romaji import romaji,cap
W=os.path.expanduser('~/work/')
d=json.load(open(W+'dict0005.json')); K={a:b for a,b,c in d if a}
over=json.load(open(W+'people_en.json')) if os.path.exists(W+'people_en.json') else {}
def iskata(s): return all('゠'<=c<='ヿ' or c=='・' for c in s)
def rom(k): return ' '.join(cap(romaji(x)) for x in k.split('・') if x)
KK={k:v for k,v in K.items() if v and len(k)>=2}
def seg(s):
    if s in KK: return KK[s]
    for i in range(3,len(s)-2):
        if s[:i] in KK and s[i:] in KK: return KK[s[:i]]+' '+KK[s[i:]]
    return cap(romaji(s))
def en(sj,rd):
    if not sj: return ''
    if sj in over: return over[sj]
    if iskata(sj):
        if sj in K and K[sj]: return K[sj]
        return ' '.join(seg(x) for x in sj.split('・') if x)
    return rom(rd) if rd else None
def build():
    recs=list(records()); SUR={}
    for i,a,s1,s2,r1,r2 in recs:
        j1=s1.split(b'\0')[0].decode('cp932')
        if dec(r1) and dec(r2): SUR.setdefault(j1,dec(r1))
    GIV={}
    for i,a,s1,s2,r1,r2 in recs:
        j2=s2.split(b'\0')[0].decode('cp932')
        if dec(r1) and dec(r2): GIV.setdefault(j2,dec(r2))
    import glob,struct
    for p in glob.glob(W+'unb3/*.bin'):
        h=open(p,'rb').read()
        if h[:4]==b'8MAG' and struct.unpack_from('<II',h,4)==(237,32):
            for k in range(237):
                r=h[12+k*32:12+k*32+32]
                sj=r[4:17].split(b'\0')[0]; rd=r[17:26].split(b'\0')[0]
                try: SUR.setdefault(sj.decode('cp932'),dec(rd))
                except: pass
    from ppl import tables
    global SRS,GRS
    SRS=set(SUR.values()); GRS=set(GIV.values())
    global CR
    import kalign
    CR=kalign.learn([(k,v) for k,v in list(SUR.items())+list(GIV.items()) if v and all('\u4e00'<=c<='\u9fff' for c in k)])
    SPLIT={i for i,k,q in tables() if k==(4501,72)}
    FW=str.maketrans('ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ','ABCDEFGHIJKLMNOPQRSTUVWXYZ')
    P=[]; bad=[]; pairs={}; global FALL; FALL=[]
    for i,a,s1,s2,r1,r2 in recs:
        j1=s1.split(b'\0')[0].decode('cp932'); j2=s2.split(b'\0')[0].decode('cp932')
        R1,R2=dec(r1),dec(r2)
        m=re.fullmatch(r'(\d+)番',j2)
        if i in SPLIT:
            full=j1+j2; R=R1+R2; suf=''; pre=''
            if full.endswith('夫妻'): full=full[:-2]; R=R[:-3] if R.endswith('フサイ') else R; suf=' & Wife'
            mm=re.fullmatch(r'(.*?)([Ａ-Ｚ]+)',full)
            if mm and mm.group(1):
                full=mm.group(1); lt=mm.group(2).translate(FW)
                for rs,es in (('ファーム',' Farm'),('レーシング',' Racing'),('レース',' Racing'),('ステーブル',' Stable'),('スタッド',' Stud'),('ホースクラブ',' HC')):
                    if R.endswith(rs): R=R[:-len(rs)]; suf=es+suf; break
                else: suf=' '+lt+suf
            for js,rs,es,p in (('牧場','ボクジョウ',' Farm',''),('ファーム','ファーム',' Farm',''),('スタッド','スタッド',' Stud',''),('ステーブル','ステーブル',' Stable',''),('レーシング','レーシング',' Racing',''),('ホースクラブ','ホースクラブ',' Horse Club',''),('クラブ','クラブ',' Club',''),('商事','ショウジ',' Trading',''),('厩舎','キュウシャ',' Stable',''),('夫人','フジン','','Mrs. '),('女史','ジョシ','','Ms. '),('家','ケ',' Family',''),('侯爵','コウシャク','','Marquis '),('公爵','コウシャク','','Duke '),('伯爵','ハクシャク','','Count '),('男爵','ダンシャク','','Baron '),('子爵','シシャク','','Viscount '),('卿','キョウ','','Lord '),('社','シャ',' Co.',''),('企画','キカク',' Planning',''),('ビル','ビル',' Building',''),('産業','サンギョウ',' Sangyo',''),('興業','コウギョウ',' Kogyo','')):
                if full.endswith(js) and len(full)>len(js):
                    full=full[:-len(js)]; suf=es+suf; pre=p
                    if R.endswith(rs): R=R[:-len(rs)]
                    break
            lead=''
            ml=re.fullmatch(r'([Ａ-Ｚ]+)(.+)',full)
            if ml: lead=ml.group(1).translate(FW)+' '; full=ml.group(2); R=R[len(R)-len(full):] if iskata(full) else R
            if re.fullmatch(r'[Ａ-Ｚ０-９]+',full): e=full.translate(FW).translate(str.maketrans('０１２３４５６７８９','0123456789'))
            elif iskata(full): e=en(full,full)
            elif (suf or pre) and R: e=rom(R)
            elif re.search(r'[\u4e00-\u9fff]',full) and not re.search(r'[\u30a0-\u30ff]',full) and R:
                e=None
                for L in (3,2,1):
                    sr=SUR.get(full[:L])
                    if sr and len(sr)>=2 and R.startswith(sr) and len(R)-len(sr)>=2 and len(full)>L and (L>1 or len(full)<=3): e=rom(sr)+' '+rom(R[len(sr):]); break
                if e is None:
                    for L in (3,2,1):
                        g=GIV.get(full[-L:])
                        if g and len(g)>=2 and R.endswith(g) and len(R)-len(g)>=2 and len(full)>L and (L>1 or len(full)<=3): e=rom(R[:-len(g)])+' '+rom(g); break
                if e is None:
                    best=None
                    for k in range(2,len(R)-1):
                        a_,b_=R[:k],R[k:]
                        if b_[0] in 'ャュョッーンァィゥェォ': continue
                        sc=(2 if a_ in SRS else 0)+(2 if b_ in GRS else 0)
                        if sc==0: continue
                        sc+= -abs(k-len(R)/2)*0.01
                        if best is None or sc>best[0]: best=(sc,k)
                    if best and best[0]>=1.9: e=rom(R[:best[1]])+' '+rom(R[best[1]:])
                    else:
                        n=len(full); pr={2:[1],3:[1,2],4:[2,1,3],5:[2,3],6:[3,2]}.get(n,[2])
                        sp=kalign.split(full,R,CR,pr) if n>=2 else None
                        e=rom(sp[0])+' '+rom(sp[1]) if sp and len(sp[0])>=2 and len(sp[1])>=1 else rom(R)
            elif R: e=rom(R)
            else: e=None
            if e is not None: e=pre+lead+e; FALL.append(e) if ' ' not in e and re.search(r'[\u4e00-\u9fff]',j1+j2) else None
            if e is None: bad.append((j1,j2,R1,R2)); continue
            e=(e+suf).encode('ascii')
            pairs[(j1,j2)]=e.decode()
            for off,b,orig in ((a,e[:16],s1),(a+17,e[16:32],s2)):
                P.append((i,off,b+b'\0'*(17-len(b))))
            continue
        if j1 in ('子孫知','子孫牧'): e1,e2=('Heir' if j1=='子孫知' else 'Heir Farm'),(' #'+m.group(1) if m else '')
        elif j2 and not R2 and R1 and not iskata(j2):
            sr=SUR.get(j1)
            if sr and R1.startswith(sr) and len(R1)>len(sr): e1=rom(sr); e2=rom(R1[len(sr):])
            elif GIV.get(j2): e1=en(j1,R1); e2=rom(GIV[j2])
            elif iskata(j1) and R1.startswith(j1): e1=en(j1,j1); e2=rom(R1[len(j1):])
            else: e1=rom(R1); e2=''
        else:
            e1=en(j1,R1); e2=en(j2,R2)
        if e1 is None or e2 is None: bad.append((j1,j2,R1,R2)); continue
        if e1 and e2: e2=' '+e2
        pairs[(j1,j2)]=e1+e2
        for off,e,orig in ((a,e1,s1),(a+17,e2,s2)):
            if not orig.strip(b'\0'): continue
            b=e.encode('ascii')[:16]
            P.append((i,off,b+b'\0'*(17-len(b))))
    json.dump([[i,a,b.hex()] for i,a,b in P],open(W+'unb_patches_people.json','w'))
    return P,bad,pairs
if __name__=='__main__':
    P,bad,pairs=build(); print(len(P),len(bad),bad[:8],'fallback',len(FALL),FALL[:30])
    import random; random.seed(4)
    for k in random.sample(sorted(pairs),40): print(k,'=>',pairs[k])
