import json,sys
J=json.load(open('/tmp/jpen.json'))
b=sys.argv[1];a,z=int(sys.argv[2]),int(sys.argv[3])
for k in range(a,z):
    key=f'{b}:{k}'
    if key not in J: continue
    js,en=J[key];n=len(js)
    # guess variant size: smallest k dividing n where block JP structure repeats count
    print(f'=={key} n={n}')
    for i,(j,e) in enumerate(zip(js,en)):
        print(f'  {i}| {j} => {e}')
