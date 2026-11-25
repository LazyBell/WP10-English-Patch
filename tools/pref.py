# pref.py OUT NEWPREFIX keys... : replace leading ': ' with NEWPREFIX
import sys,os,json,subprocess
D=json.load(open(os.path.expanduser('~/work/pc/texts_dump.json'),encoding='utf8'))
out=sys.argv[1];np=sys.argv[2];args=[]
for key in sys.argv[3:]:
    for i,e in enumerate(D[key]):
        if isinstance(e,str) and e.startswith(': ') and len(e)>2: args.append(f'{key}:{i}={np}'+e[2:])
subprocess.run(['python3',os.path.expanduser('~/tools/segfix.py'),out]+args,stdout=subprocess.DEVNULL);print(len(args))
