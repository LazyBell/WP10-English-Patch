import sys,os,re,collections,pickle,struct,json
sys.path.insert(0,os.path.expanduser('~/tools'));import hk
from horsebuild import english
W=os.path.expanduser('~/work/')
enc=pickle.load(open(W+'pc/horse_enc.pkl','rb'))
def tab(h): return [struct.unpack_from('<QQII',h,0x20+24*i) for i in range((len(h)-0x20)//24)]
ES=tab(open(W+'DATA.UNH','rb').read())
rx=re.compile(rb'(?<=[\x00\xa2-\xfc])[\x01-\x56\xfe]{2,18}\x00')
SKIP={580,140,526,202,664}
cache={};P=[];st=collections.Counter();toolong=[]
def eng(k):
    if k not in cache: cache[k]=english(k)
    return cache[k]
for i,e in enumerate(ES):
    if i in SKIP or e[2]!=e[3]: continue
    fn=W+'unb2/%04d.bin'%i
    if not os.path.exists(fn): continue
    d=open(fn,'rb').read()
    if d[:4]!=b'8MAG' and d[:4]!=b'8INI': continue
    hits=[(m.start(),m.group()[:-1]) for m in rx.finditer(d) if m.group()[:-1] in enc]
    if len(hits)<5: continue
    rows,size=struct.unpack_from('<II',d,4)
    strides=collections.Counter(b[0]-a[0] for a,b in zip(hits,hits[1:])).most_common(1)[0][0]
    for h,k in hits:
        z=h+len(k)
        while z<len(d) and d[z]==0 and z-h<40: z+=1
        cap=z-h-1
        if strides==36:
            mod=(h-12)%36
            if mod not in (0,20): continue
            lim=18
        elif strides==18: lim=17
        else: continue
        cap=min(cap,lim)
        en,how=eng(k)
        try: b=hk.enc_en(en)
        except ValueError:
            en=re.sub(r"[^A-Za-z0-9 '.\-]",'',en); b=hk.enc_en(en)
        if len(b)>cap:
            b2=hk.enc_en(en.replace(' ',''))
            if len(b2)<=cap and False: b=b2
            else: st['toolong']+=1; toolong.append((hk.dec(k),en,cap)); continue
        P.append([i,h,(b+b'\0'*(cap+1-len(b))).hex()]);st[how]+=1
json.dump(P,open(W+'pc/hold/unb_patches_horses.json','w'))
json.dump(toolong,open(W+'pc/horse_toolong.json','w'),ensure_ascii=False)
print(st,len(P),len(cache));print(toolong[:30])
