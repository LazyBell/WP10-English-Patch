import sys,os,json,time,collections
os.environ.setdefault('WPVER','104');sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc
S=ktpc.Set('High');L=[i for i,e in enumerate(S.ents) if e['tk']!=0xafbec60c and e['fs']<64<<20]
P=os.path.expanduser('~/work/pc/magscan.json');st=json.load(open(P)) if os.path.exists(P) else {'k':0,'hits':[],'tk':{}}
t0=time.time();k=st['k']
while k<len(L) and time.time()-t0<160:
    i=L[k];k+=1
    try: p=ktpc.payload(S.raw(S.ents[i]))
    except Exception: continue
    tk=hex(S.ents[i]['tk']);st['tk'].setdefault(tk,p[:8].hex())
    for m in (b'G1TG',b'DDS |',b'GT1G',b'\x89PNG'):
        o=p.find(m)
        if o>=0: st['hits'].append([i,tk,m.decode('latin-1'),o,len(p)])
st['k']=k;json.dump(st,open(P,'w'));print(k,len(L),len(st['hits']),st['hits'][:10])
