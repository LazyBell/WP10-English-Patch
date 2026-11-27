import json,sys,re
d=json.load(open('/sessions/'+__import__('os').environ['USER']+'/work/v104/texts_dump.json')) if False else json.load(open(__import__('os').path.expanduser('~/work/v104/texts_dump.json')))
for pat in sys.argv[1:]:
    r=re.compile(pat)
    hits=[(k,v) for k,v in d.items() if any(r.search(s or '') for s in v)]
    print('==',pat,len(hits))
    for k,v in hits[:6]: print(' ',k,json.dumps(v,ensure_ascii=False)[:300])
