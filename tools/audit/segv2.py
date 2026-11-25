import json,sys,re
J=json.load(open('/tmp/jpen.json'))
keys=[k for k in J if k.split(':')[0]==sys.argv[1]]
keys.sort(key=lambda k:int(k.split(':')[1]))
a,b=int(sys.argv[2]),int(sys.argv[3])
for key in keys[a:b]:
    js,en=J[key];seen={};
    print('=='+key)
    for i,(j,e) in enumerate(zip(js,en)):
        if not j and not e: continue
        sig=(j,e)
        if sig in seen: seen[sig].append(i);continue
        seen[sig]=[i]
    for (j,e),ix in seen.items():
        print(f' {",".join(map(str,ix))}| {j} => {e}')
print(len(keys))
