import json,struct,os,glob
W=os.path.expanduser('~/work/')
CO={'キルト':'Kilt','アルファン':'Alphan','ジャパンＲ':'Japan Racing','安平ＲＨ':'Abira RH','駿馬ＨＣ':'Shunme HC','大河ＲＣ':'Taiga RC','ひだかＣＯ':'Hidaka Co.','スマイルＦ':'Smile Farm','ダービーＣ':'Derby Club','最強ＨＣ':'Saikyo HC'}
REP={('阿藤','智輝'):('Ato','Tomoki'),('宇野','直人'):('Uno','Naoto'),('赤石','陽次朗'):('Akaishi','Yojiro'),('吉野','春文'):('Yoshino','Harufumi'),('神野','明人'):('Jinno','Akito'),('蒼沢','嘉紀'):('Aizawa','Yoshinori'),('荒井','宏'):('Arai','Hiroshi'),('今野','保次郎'):('Konno','Yasujiro'),('根鈴','英治'):('Nesuzu','Eiji'),('沼山','孝志'):('Numayama','Takashi')}
P=json.load(open(W+'unb_patches_people.json'))
D={(i,a):h for i,a,h in P}
n=0
for p in sorted(glob.glob(W+'unb3/*.bin')):
    b=open(p,'rb').read()
    if b[:4]!=b'8MAG' or struct.unpack_from('<II',b,4)!=(49,140): continue
    i=int(os.path.basename(p)[:4])
    for k in range(49):
        a=12+k*140; r=b[a:a+140]
        s=lambda o,l: r[o:o+l].split(b'\0')[0].decode('cp932','replace')
        co=s(100,30); key=(s(48,17),s(65,17))
        if co in CO:
            e=CO[co].encode(); D[(i,a+100)]=(e+b'\0'*(30-len(e))).hex(); n+=1
        if key in REP:
            e1,e2=REP[key]; e2=' '+e2
            D[(i,a+48)]=(e1.encode()+b'\0'*(17-len(e1))).hex()
            D[(i,a+65)]=(e2.encode()+b'\0'*(17-len(e2))).hex(); n+=1
json.dump([[i,a,h] for (i,a),h in D.items()],open(W+'unb_patches_people.json','w'))
print('fixed',n)
