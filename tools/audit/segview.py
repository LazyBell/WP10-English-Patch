import json,sys
J=json.load(open('/tmp/jpen.json'))
for key in sys.argv[1:]:
    js,en=J[key];print('=='+key)
    for i,(j,e) in enumerate(zip(js,en)):
        if e is None or e=='' and not j: continue
        print(f' {i}| {j}  =>  {e!r}')
