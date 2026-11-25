import json,sys
J=json.load(open('/tmp/jpen.json'));F=json.load(open(sys.argv[1]))
a,b=int(sys.argv[2]),int(sys.argv[3])
for key in F[a:b]:
    js,en=J[key];seen={}
    for i,(j,e) in enumerate(zip(js,en)):
        if not j and not e: continue
        seen.setdefault((j,e),[]).append(i)
    print('=='+key)
    for (j,e),ix in seen.items(): print(f' {",".join(map(str,ix))}| {j} => {e}')
