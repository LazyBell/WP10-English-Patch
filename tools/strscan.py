import sys,os,json,time
os.environ.setdefault('WPVER','104');sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc
S=ktpc.Set('High');L=[i for i,e in enumerate(S.ents) if e['tk']!=0xafbec60c and e['fs']<64<<20]
pats=[(w,enc,w.encode(enc)) for w in ('執念で紡','先駆者を追','元祖3強') for enc in ('utf-8','utf-16-le','cp932')]
P=os.path.expanduser('~/work/pc/strscan.json');st=json.load(open(P)) if os.path.exists(P) else {'k':0,'hits':[]}
t0=time.time();k=st['k']
while k<len(L) and time.time()-t0<160:
    i=L[k];k+=1
    try: p=ktpc.payload(S.raw(S.ents[i]))
    except Exception: continue
    for w,enc,b in pats:
        o=p.find(b)
        if o>=0: st['hits'].append([i,hex(S.ents[i]['tk']),w,enc,o])
st['k']=k;json.dump(st,open(P,'w'));print(k,len(L),st['hits'][:10])
