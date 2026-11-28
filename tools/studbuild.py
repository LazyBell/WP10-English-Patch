import json,os,glob,struct
W=os.path.expanduser('~/work/')
M={'JBBA静内':'Shizunai','ＪＢＢＡ静内':'Shizunai','メイジ':'Meiji','平山':'Hirayama','日高':'Hidaka','谷山':'Taniyama','萩原':'Hagiwara','大河':'Taiga','長村畜産':'Nagamura','ピュアスノー':'Pure Snow','新冠ＢＣ':'Niikappu BC','鳳凰':'Hoo','川下越夫':'Kawashimo','サウスヒル':'South Hill','ランド':'Land','吉野白老':'Y.Shiraoi','おりも':'Orimo','ビッグフット':'Bigfoot','フジコウ':'Fujiko','静内軽種馬':'Shizunai','吉野ノーザン':'Y.Northern','吉野安平':'Y.Abira','門別':'Mombetsu','シム':'Sim','西谷':'Nishitani','下河内':'Shimokochi','ドーレー':'Dorley','万代':'Mandai','ジェイエム':'JM','ポカポカ':'Pokapoka','山岡':'Yamaoka','カブト':'Kabuto','萩ノ鈴':'Haginosuzu','セシル':'Cecil'}
P=[]
for f in sorted(glob.glob(W+'unb3/*.bin')):
    d=open(f,'rb').read()
    if d[:4]!=b'8MAG' or struct.unpack('<II',d[4:12])!=(38,204): continue
    i=int(os.path.basename(f)[:4])
    for k in range(38):
        a=12+204*k+16; s=d[a:a+12].split(b'\0')[0]
        if not s: continue
        e=M[s.decode('cp932')].encode(); assert len(e)<=11
        P.append([i,a,(e+b'\0'*(12-len(e))).hex()])
json.dump(P,open(W+'unb_patches_stud.json','w')); print(len(P))
