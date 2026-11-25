# scan built WMM for leftover SJIS text
import json,struct,os,re,collections,sys
W=os.path.expanduser('~/work/')
def load(path):
    d=open(path,'rb').read();B=json.load(open(W+'pc/pc_banks.json'));pos=0;res=[]
    for bi,(_,cnt,_) in enumerate(B):
        offs=struct.unpack_from('<%dI'%cnt,d,pos+4)
        if bi+1<len(B):
            nc=B[bi+1][1];q=(pos+offs[-1]+0x3f)&~0x3f
            while struct.unpack_from('<I',d,q)[0]!=nc: q+=0x40
            end=q
        else: end=len(d)
        bank=d[pos:end];res.append([bank[offs[k]:(offs[k+1] if k+1<cnt else len(bank))] for k in range(cnt)]);pos=end
    return res
def strip(m):
    m=re.sub(rb'\x02..',b'',m,flags=re.S)
    m=re.sub(rb'\x01C....',b'',m,flags=re.S)
    m=re.sub(rb'\x04[^\x01\x05]*',b'',m)
    m=re.sub(rb'\x1b[A-Z]',b'',m)
    return m
JP=re.compile(rb'(?:[\x81-\x9f\xe0-\xef][\x40-\xfc]|[\xa1-\xdf]){2,}')
if __name__=='__main__':
    banks=load(W+'pc_out/WMM.DAT');c=collections.Counter();ex=collections.defaultdict(list)
    for bi,mm in enumerate(banks):
        for k,m in enumerate(mm):
            s=strip(m)
            for x in JP.finditer(s):
                t=x.group()
                try: u=t.decode('cp932')
                except: continue
                if re.fullmatch(r'[ー－・…‥、。！？「」『』（）〜～\s]+',u): c['punct']+=1; ex['punct'].append((bi,k,u)); continue
                c[bi]+=1; ex[bi].append((k,u))
    print(c)
    json.dump({str(k):v for k,v in ex.items()},open(W+'pc/audit_wmmjp.json','w'),ensure_ascii=False,indent=0)
    for b in ex:
        if b=='punct':continue
        print(b,ex[b][:6])
    print('punct',collections.Counter(u for _,_,u in ex['punct']).most_common(20))
