import json,sys,os
W=os.path.expanduser('~/work/')
p=W+'data_tr.json'
t=json.load(open(p)) if os.path.exists(p) else {}
t.update(json.load(open(sys.argv[1])))
json.dump(t,open(p,'w'),ensure_ascii=False,indent=0)
S={x[2]:x[1] for x in json.load(open(W+'data_strings.json'))}
for k,v in t.items():
    if k in S and len(v.encode())>S[k]: print('LONG',k,v,len(v.encode()),S[k])
    if k not in S: print('MISSING',k)
print('data total',len(t))
