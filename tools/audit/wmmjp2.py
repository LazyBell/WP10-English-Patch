import sys,os,re,json,collections
sys.path.insert(0,os.path.expanduser('~/tools/audit'));from wmmjp import load,W
banks=load(W+'pc_out/WMM.DAT')
RX=re.compile(rb'(?:\x1b[HK])?(?:[\x81-\x9f\xe0-\xef][\x40-\xfc]|[\xa1-\xdf])(?:[\x81-\x9f\xe0-\xef][\x40-\xfc]|[\xa1-\xdf]|\x1b[HK]|[ \n%\d!?\x22]){2,}')
out=collections.OrderedDict()
for bi,mm in enumerate(banks):
    for k,m in enumerate(mm):
        # mask var codes
        mk=bytearray(m)
        for x in re.finditer(rb'\x02..|\x01C....|\x04[^\x01\x05]*',m,flags=re.S):
            for i in range(x.start(),x.end()): mk[i]=0
        for x in RX.finditer(bytes(mk)):
            raw=m[x.start():x.end()]
            try: u=re.sub(rb'\x1b[HK]',b'',raw).decode('cp932')
            except: continue
            core=re.sub(r'[ー－・…‥、。！？「」『』（）〜～\s\d%!?"]','',u)
            if len(core)<2: continue
            out.setdefault(u.strip(),[]).append((bi,k,raw.decode('latin-1')))
print(len(out),sum(len(v) for v in out.values()))
json.dump([[u,v] for u,v in out.items()],open(W+'pc/audit_glue2.json','w',encoding='utf8'),ensure_ascii=False,indent=0)
for i,(u,v) in enumerate(out.items()): print(i,len(v),v[0][:2],repr(u))
