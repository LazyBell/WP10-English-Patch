import os,re,collections,json
W=os.path.expanduser('~/work/')
VS=collections.defaultdict(collections.Counter); VG=collections.defaultdict(collections.Counter)
def sj(f):
    n=f.find(b'\0'); 
    if n<=0 or any(f[n:]): return None
    s=f[:n]
    try: t=s.decode('cp932')
    except: return None
    if not all(('一'<=c<='鿿') or ('ぁ'<=c<='ゖ') or c in '々ヶ' for c in t): return None
    return s
def rd(f):
    n=f.find(b'\0'); n=len(f) if n<0 else n
    if n<1 or any(f[n:]) or not all(1<=c<=0x56 or c==0xfe for c in f[:n]): return None
    return f[:n]
pat=re.compile(rb'[\x88-\x9f\xe0-\xea][\x40-\xfc]')
for fn in sorted(os.listdir(W+'unb3')):
    d=open(W+'unb3/'+fn,'rb').read()
    for m in pat.finditer(d):
        p=m.start()
        if p+52>len(d) or (p and d[p-1]!=0 and d[p-1]<0x80 and False): continue
        a=sj(d[p:p+17]); 
        if not a: continue
        b=sj(d[p+17:p+34]); r1=rd(d[p+34:p+43]); r2=rd(d[p+43:p+52])
        if not b or not r1 or not r2: continue
        if len(r1)<len(a)//2 or len(r2)<len(b)//2 or len(r1)>2*len(a)+1 or len(r2)>2*len(b)+1: continue
        VS[a][r1]+=1; VG[b][r2]+=1
print(len(VS),len(VG))
json.dump({'SUR':{k.hex():c.most_common(1)[0][0].hex() for k,c in VS.items()},'GIV':{k.hex():c.most_common(1)[0][0].hex() for k,c in VG.items()}},open(W+'kanjimaps_data.json','w'))
for x in ['藤原','相沢','堀','三好','西園','大竹']:
    h=x.encode('cp932'); print(x, VS.get(h))
