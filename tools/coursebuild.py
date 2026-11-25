import json,os
W=os.path.expanduser('~/work/')
d=open(W+'unb3/0491.bin','rb').read()
m=dict(l.rstrip('\n').split('=',1) for l in open(W+'course_en.txt',encoding='utf8'))
CN={'京都':'Kyoto','小倉':'Kokura','札幌':'Sapporo','中京':'Chukyo','東京':'Tokyo','中山':'Nakayama','新潟':'Niigata','函館':'Hakodate','阪神':'Hanshin','福島':'Fukushima','アケダクト':'Aqueduct','アーリントン':'Arlington','ウッドバイン':'Woodbine','オークローンパーク':'Oaklawn Park','ガルフストリームパーク':'Gulfstream Park','キーンランド':'Keeneland','サラトガ':'Saratoga','サンタアニタ':'Santa Anita','ターフウェーパーク':'Turfway Park','チャーチルダウンズ':'Churchill Downs','デルマー':'Del Mar','ロスアラミトス':'Los Alamitos','ピムリコ':'Pimlico','ベルモントパーク':'Belmont Park','モンマスパーク':'Monmouth Park','ルイジアナダウンズ':'Louisiana Downs','ローレルパーク':'Laurel Park','フェアグラウンズ':'Fair Grounds','シャティン':'Sha Tin','カラ':'The Curragh','レパーズタウン':'Leopardstown','アスコット':'Ascot','エプソムダウンズ':'Epsom Downs','グッドウッド':'Goodwood','サンダウンパーク':'Sandown Park','ドンカスター':'Doncaster','ニューベリー':'Newbury','ニューマーケット':'Newmarket','ヘイドックパーク':'Haydock Park','ヨーク':'York','サンクルー':'Saint-Cloud','シャンティイ':'Chantilly','ドーヴィル':'Deauville','メゾンラフィット':'Maisons-Laffitte','パリロンシャン':'ParisLongchamp','バーデンバーデン':'Baden-Baden','ハンブルク':'Hamburg','チェスター':'Chester','ナヴァン':'Navan','ホッペガルテン':'Hoppegarten','ムーニーバレー':'Moonee Valley','フレミントン':'Flemington','ロイヤルランドウィック':'Royal Randwick','ローズヒルガーデンズ':'Rosehill Gardens','コーフィールド':'Caulfield','メイダン':'Meydan','キングアブドゥルアジーズ':'King Abdulaziz','浦和':'Urawa','大井':'Oi','金沢':'Kanazawa','川崎':'Kawasaki','高知':'Kochi','佐賀':'Saga','名古屋':'Nagoya','船橋':'Funabashi','盛岡':'Morioka','門別':'Mombetsu','園田':'Sonoda'}
json.dump(CN,open(W+'course_names.json','w'),ensure_ascii=False)
P=[];miss=set()
for r in range(68):
    b=r*620
    nm=d[b:b+28].split(b'\0')[0].decode('cp932')
    e=CN[nm].encode(); P.append([491,b,(e+b'\0').hex()])
    for k in range(24):
        o=b+116+21*k
        if o+21>b+620: break
        s=d[o:o+21].split(b'\0')[0]
        if not s: continue
        try: j=s.decode('cp932')
        except: continue
        if not (s[0]>=0x81 or j in m): continue
        if j not in m: miss.add(j); continue
        e=m[j].encode(); P.append([491,o,(e+b'\0'*(21-len(e))).hex()])
print(len(P),miss)
json.dump(P,open(W+'unb_patches_course.json','w'))
