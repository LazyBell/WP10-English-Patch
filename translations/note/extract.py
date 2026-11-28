import sys,os,json,re,collections
sys.path.insert(0,os.path.expanduser('~/tools'))
import wmmapply_pc as w
from wmm import decode
W=os.path.expanduser('~/work/')
pc=w.loadf(W+'v104/WMM_jp.DAT',W+'v104/pc_banks.json')
D=json.load(open(W+'v104/texts_dump.json'))
out={}
for k in (130,131):
    m=pc[35][1][k]; ms=list(w.SEG.finditer(m)); en=D[f'35:{k}']
    assert len(ms)==len(en)
    variants=[];cur=[];prev=0
    for i,x in enumerate(ms):
        ctl=m[prev:x.start()]; prev=x.end()
        if b'\x05' in ctl:
            if cur: variants.append(cur)
            cur=[]
            ctl=ctl.split(b'\x05')[-1]
        cur.append((i,ctl.hex(),decode(x.group(1)),en[i]))
    if cur: variants.append(cur)
    out[k]=variants
    inl=collections.Counter(c for v in variants for j,(i,c,a,b) in enumerate(v) if j>0)
    print(k,'variants',len(variants),'inline ctls',inl.most_common(12))
json.dump(out,open(W+'note/variants.json','w'),ensure_ascii=False)
