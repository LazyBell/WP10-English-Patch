import pickle,os,sys,json
sys.path.insert(0,os.path.expanduser('~/tools'))
from romaji import romaji
W=os.path.expanduser('~/work/')
E=pickle.load(open(W+'unb_E.pkl','rb')); o=open(W+'DATA.UNB','rb')
def ent(i):
    off,x,unc,comp=E[i]; o.seek(off); return o.read(comp)
def cap(s): return s[:1].upper()+s[1:]
def rd(b): return b.split(b'\0')[0].decode('cp932')
def fields():
    out=[]
    d=ent(76)
    for k in range(400):
        b=12+k*44
        out.append(('S',76,b+2,b+9,rd(d[b+9:b+22])))
        out.append(('F',76,b+22,b+29,rd(d[b+29:b+42])))
    d=ent(344)
    for k in range(401):
        b=12+k*24
        out.append(('M',344,b+2,b+9,rd(d[b+9:b+22])))
    return out
if __name__=='__main__':
    F=fields(); bad={'S':[],'F':[],'M':[]}
    for t,e,a,ka,kana in F:
        r=cap(romaji(kana)); lim=6 if t=='S' else 5
        if len(r)>lim: bad[t].append((kana,r))
    for t in bad: print(t,len(bad[t]),bad[t][:40])

SUR='サトウ イトウ カトウ サイトウ エンドウ アベ アンドウ イケダ イシイ ウエダ オノ オオイシ クドウ ゴトウ コンドウ サカイ サノ ショウジ スギタ タケダ タナカ タムラ チバ ノダ ハラ ヒラノ フジイ マエダ マツイ ミウラ モリ ヤギ ヤマダ ヤノ ヨシダ ワダ イマイ イノウエ ウノ オカダ オダ カネコ キムラ クボ コバヤシ サカモト シバタ スズキ スドウ ソノダ タカダ タニ ツジ ナカノ ニシダ ノムラ ハマダ ヒライ フクダ ホンダ マスダ マツダ ミズノ ムラタ モリタ ヤスダ ヨコタ アオキ アライ イワタ ウメダ オオノ キタノ クロダ コイデ サワダ シマダ スガ タカノ タジマ チダ ツダ トダ ナガイ ナリタ ニイノ ノグチ ハセ ヒノ フルタ ホシノ マキノ ミヤタ ムトウ モトキ ヤマノ ユアサ ヨネダ アキヤマ イワイ ウツミ エガワ オクダ カワイ キクチ クリタ コダマ サクマ シノダ スエ タカイ タキ ツツイ トミタ ナイトウ ニワ ノザワ ハヤシ ヒロタ フジタ ホソダ マルヤマ ミノ ムカイ モチダ ヤナギ ヨシノ アダチ イダ ウエノ エグチ オギノ カジ キシ クマダ コマツ サクライ シライ セキ タダ ツチヤ トヨダ ナカタ ニシノ ハギノ ヒグチ ホリ マツモト ミキ モリモト ヤジマ ワカバ'.split()
MAL='ケン リョウ ショウ ユウタ ユウト ユウキ ケンタ ショウタ カイト ダイキ リク ソラ ケンジ コウジ シン ジュン アキラ イサム オサム ケイ ゴロウ タロウ ジロウ コウキ リョウタ リュウジ シュウジ シンジ ナオキ ヨウジ エイジ セイジ タカオ ヒロ コウタ ソウタ リン レン ハル ヤスオ テツ テルオ マサオ フミオ カズオ アキオ イワオ ノリオ トオル タダオ ヨシ ケイタ コウヘイ リュウタ タイガ ガク リュウ ジョウ トモ ヒデ カズ ユウ ジン ダン タク リョウジ ケンゴ ショウゴ ダイゴ ユウゴ シュン ユウジ コウ アツ ノブ マサ ヤス'.split()
FEM='ヨウコ ケイコ エミ ユミ ミカ アヤ サキ マイ リエ カナ ナナ ユカ エリ アイ ミオ リナ ハナ メイ ユイ リオ モエ アサミ アヤカ ナオミ カオリ サチ ミチ アキコ ジュンコ レイコ サヨ フミエ ヒロエ マユ ミサ リョウコ ユウコ ヨシコ カズコ ノブコ エツコ ミホ ナホ サエ チエ トモエ'.split()
def make():
    F=fields(); P=[]; used={'S':{},'F':{},'M':{}}; it={'S':0,'F':0,'M':0}; rep=[]
    for t,e,a,ka,kana in F:
        r=cap(romaji(kana)); lim=6 if t=='S' else 5
        newk=None
        if len(r)>lim:
            if t=='S': L=SUR
            elif t=='M' or not (r.endswith('ko') or r[-1:] in 'e'): L=MAL
            else: L=FEM
            while True:
                c=L[it[t]%len(L)] if t!='F' else L[(it[t])%len(L)]; it[t]+=1
                if len(cap(romaji(c)))<=lim: break
            newk=c; r=cap(romaji(c)); rep.append((kana,newk,r))
        s=(r if t=='S' else ' '+r).encode('ascii')
        P.append([e,a,(s+b'\0'*7)[:7].hex()])
        if newk:
            kb=newk.encode('cp932'); assert len(kb)<=12
            P.append([e,ka,(kb+b'\0'*13)[:13].hex()])
    json.dump(P,open(W+'unb_patches_pools.json','w'))
    return len(P),rep
if __name__=='__main__' and len(sys.argv)>1:
    n,rep=make(); print(n,len(rep)); print(rep[:15])
