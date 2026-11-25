import json,os,glob,struct,sys
sys.path.insert(0,os.path.expanduser('~/tools'))
from hk import dec
from romaji import romaji,cap
from pplbuild import en,iskata
W=os.path.expanduser('~/work/')
F={'ビューチフルドリーマー':'Beautiful Dreamer','フロリースカップ':'Flories Cup','アストニシメント':'Astonishment','ヘレンサーフ':'Helen Surf','エスサーディー':'Esther Dee','クレイグダーロッチ':'Craigdarroch','チップトップ':'Tip Top','プロポンチス':'Propontis','フラストレート':'Frustrate','サンタストラ':'Saint Astra','アワーラッシー':'Our Lassie','ドクサ':'Doxa','フリゼット':'Frizette','プリティポリー':'Pretty Polly','アルトヴィスカー':'Altoviscar','フライバイナイト':'Fly by Night','リメンブランス':'Remembrance','トーペンハウ':'Torpenhow','セントルーカー':'St. Lucre','アフェクション':'Affection','サイモンズシューズ':"Simon's Shoes",'ブードワール':'Boudoir','ストレンキス':'Strenkis','フルートフル':'Fruitful','アートレス':'Artless','パラフィンラス':'Paraffine Lass','チェロキーローズ':'Cherokee Rose','ダイナカール':'Dyna Car','スカーレットインク':'Scarlet Ink','サンタルチアナ':'Santa Luciana','ディナーパートナー':'Dinner Partner','アンティックヴァリュー':'Antique Value','ロイヤルサッシュ':'Royal Sash','メジロボサツ':'Mejiro Bosatsu','サモワール':'Samovar','フライアーズカース':"Friar's Carse",'ジェベリカ':'Djebellica','リプライ':'Reply','ポーテージ':'Portage','マルガレーテン':'Margarethen','レディビーグッド':'Lady Be Good','ムムタズマハル':'Mumtaz Mahal','レディピット':'Lady Pit','クイーンズスタテュート':"Queen's Statute",'ツーボブ':'Two Bob','ラチカ':'Rachika','イッツアベット':'Itsabet','ナウワット':'Now What'}
P=[];S=[]
for f in sorted(glob.glob(W+'unb3/*.bin')):
    d=open(f,'rb').read(); i=int(os.path.basename(f)[:4])
    if d[:4]!=b'8MAG': continue
    key=struct.unpack('<II',d[4:12])
    if key==(105,1108):
        for k in range(105):
            a=12+1108*k+1060; s=d[a:a+34].split(b'\0')[0]
            if not s: continue
            e=F[s.decode('cp932')].encode(); assert len(e)<34
            P.append([i,a,(e+b'\0'*(34-len(e))).hex()])
    if key==(237,32):
        for k in range(237):
            a=12+32*k+4; s=d[a:a+13].split(b'\0')[0]
            if not s: continue
            rd=dec(d[a+13:a+22].split(b'\0')[0])
            j=s.decode('cp932')
            e=(en(j,rd) if iskata(j) else cap(romaji(rd))).encode()[:12]
            S.append([i,a,(e+b'\0'*(13-len(e))).hex()])
json.dump(P+S,open(W+'unb_patches_fame.json','w')); print(len(P),len(S))
print([bytes.fromhex(h).split(b'\0')[0] for _,_,h in S[:40]])
