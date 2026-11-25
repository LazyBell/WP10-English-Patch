import json,sys,os
os.chdir(os.path.expanduser('~/work'))
S=json.load(open('short.json' if len(sys.argv)<3 else sys.argv[2])); T=json.load(open('translations.json')); skip=set(json.load(open('skip.json')))
rest=[x for x in S if x[2] not in T and x[2] not in skip]
print('remaining',len(rest))
n=int(sys.argv[1]) if len(sys.argv)>1 else 400
print(' | '.join(f'{l}:{t}' for o,l,t in rest[:n]))
