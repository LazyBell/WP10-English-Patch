import sys,os,json,time,struct
os.environ.setdefault('WPVER','104');sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc
S=ktpc.Set('High');L=[i for i,e in enumerate(S.ents) if e['tk']!=0xafbec60c and e['fs']<64<<20]
T=[struct.pack('<I',0x789081b8),struct.pack('>I',0x789081b8)]
P=os.path.expanduser('~/work/pc/refscan.json');st=json.load(open(P)) if os.path.exists(P) else {'k':0,'hits':[]}
t0=time.time();k=st['k']
while k<len(L) and time.time()-t0<160:
    i=L[k];k+=1
    try: p=ktpc.payload(S.raw(S.ents[i]))
    except Exception: continue
    for j,t in enumerate(T):
        o=p.find(t)
        if o>=0: st['hits'].append([i,hex(S.ents[i]['tk']),hex(S.ents[i]['fk']),j,o,len(p)])
    raw=S.ents[i]['extra']
    if T[0] in raw: st['hits'].append([i,'extra',hex(S.ents[i]['fk'])])
st['k']=k;json.dump(st,open(P,'w'));print(k,len(L),st['hits'][:20])
