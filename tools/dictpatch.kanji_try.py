import sys,os,json,collections
sys.path.insert(0,os.path.expanduser('~/tools'));import hk
W=os.path.expanduser('~/work/')
x=open(W+'unb3/0005.bin','rb').read()
P=[];st=collections.Counter()
for i in range((len(x)-12)//0x44):
    r=12+0x44*i
    k=x[r:r+0x1f].split(b'\0')[0];e=x[r+0x1f:r+0x44].split(b'\0')[0].strip(b'\x9f')
    if k==hk.enc_kana('ヨリ') and not e: e=hk.enc_en('Yori')
    if not k or not e: st['empty']+=1;continue
    core=k[:-1] if k[-1]>=0xa2 and k[-1]<0xfd else k
    if not core: st['skip']+=1;continue
    e=e.rstrip(b'\x9f')
    if len(e)>0x1e: st['long']+=1;continue
    P.append([5,r,(e+b'\0'*(0x1f-len(e))).hex()]);st['ok']+=1
json.dump(P,open(W+'unb_patches_zdict.json','w'));print(st)
