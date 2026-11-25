import json,struct,os,sys
RO=0x37e2000
S={}
for o,l,t in json.load(open(os.path.expanduser('~/work/ro_strings.json'))): S.setdefault(t,[]).append((o,l))
def build(tr,path):
    recs=[]; bad=[]
    for jp,en in tr.items():
        if jp not in S: bad.append(('missing',jp)); continue
        e=en.encode('utf-8')
        for o,l in S[jp]:
            if len(e)>l: bad.append(('long',jp,en,len(e),l)); continue
            recs.append((RO+o+0x100, e+b'\0'*(l-len(e))))
    DS=os.path.expanduser('~/work/data_strings.json'); DT=os.path.expanduser('~/work/data_tr.json')
    if os.path.exists(DS) and os.path.exists(DT):
        dt=json.load(open(DT))
        for o,l,t in json.load(open(DS)):
            if t in dt:
                e=dt[t].encode('utf-8')
                if len(e)>l: bad.append(('dlong',t,dt[t],len(e),l)); continue
                recs.append((0x43fd000+o+0x100, e+b'\0'*(l-len(e))))
    for ex in (os.path.expanduser('~/work/extra_ips.json'),os.path.expanduser('~/work/code_ips.json')):
      if os.path.exists(ex):
          for a,h in json.load(open(ex)): recs.append((a,bytes.fromhex(h)))
    out=b'IPS32'
    for off,data in sorted(recs):
        out+=struct.pack('>I',off)+struct.pack('>H',len(data))+data
    out+=b'EEOF'
    os.makedirs(os.path.dirname(path),exist_ok=True); open(path,'wb').write(out)
    return len(recs),bad
if __name__=='__main__':
    tr=json.load(open(sys.argv[1]))
    print(build(tr,sys.argv[2]))
