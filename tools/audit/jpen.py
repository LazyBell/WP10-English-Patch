import sys,os,json
sys.path.insert(0,os.path.expanduser('~/tools'))
src=open(os.path.expanduser('~/tools/wmmapply_pc.py')).read()
src=src[:src.index('\ndef main')]
g={'__name__':'x','__file__':os.path.expanduser('~/tools/wmmapply_pc.py')};exec(compile(src,'w','exec'),g)
W=g['W'];pc=g['loadf'](W+'pc/WMM_jp.DAT',W+'pc/pc_banks.json')
D=json.load(open(W+'pc/texts_dump.json',encoding='utf8'));out={}
for key,en in D.items():
    b,k=map(int,key.split(':'));ss=[g['decode'](x) for x in g['segs'](pc[b][1][k])]
    out[key]=[ss,en]
json.dump(out,open('/tmp/jpen.json','w'),ensure_ascii=False);print(len(out))
