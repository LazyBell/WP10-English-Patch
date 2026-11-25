import sys,os,glob,re,collections,pickle,json,struct
sys.path.insert(0,os.path.expanduser('~/tools'));import hk
from romaji import romaji,cap
W=os.path.expanduser('~/work/')
d=open(W+'unb2/0580.bin','rb').read()
D={}
for r in range(0x6700c,0x299ae0+1,0x44):
    k=d[r:r+0x1f].split(b'\0')[0];e=d[r+0x1f:r+0x44].split(b'\0')[0]
    if k and e and all(c<=0x56 or c==0xfe for c in k): D.setdefault(k,hk.dec(e).strip())
OV=json.load(open(W+'pc/horse_override.json')) if os.path.exists(W+'pc/horse_override.json') else {}
def seg(k):
    n=len(k);best=[None]*(n+1);best[0]=(0,[])
    for i in range(n):
        if best[i] is None: continue
        for j in range(n,i,-1):
            w=D.get(k[i:j])
            if w is None: continue
            c=(best[i][0]+1,best[i][1]+[w])
            if best[j] is None or c[0]<best[j][0]: best[j]=c
    return best[n][1] if best[n] else None
def join(ws):
    out=''
    for w in ws:
        if out and not out.endswith(' ') and not w.startswith(("'",'-')): out+=' '
        out+=w
    return re.sub(r'\s+',' ',out).strip()
def english(kana_bytes):
    s=hk.dec(kana_bytes)
    if s in OV: return OV[s],'ov'
    ws=seg(kana_bytes)
    if ws: return join(ws),'dict'
    return cap(romaji(s)),'romaji'
def fits(e):
    try: hk.enc_en(e); return True
    except ValueError: return False
if __name__=='__main__':
    enc=pickle.load(open(W+'pc/horse_enc.pkl','rb'))
    st=collections.Counter();ex=[]
    for k in list(enc)[:4000]:
        e,how=english(k);st[how]+=1
        if len(ex)<60 and how!='dict': ex.append((hk.dec(k),e))
    print(st);print(ex)
    import random;random.seed(1);s=random.sample(list(enc),40)
    print([(hk.dec(k),english(k)[0]) for k in s])
