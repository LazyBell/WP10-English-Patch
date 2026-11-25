import json,sys,os,subprocess
os.chdir(os.path.expanduser('~/work'))
t=json.load(open('translations.json')); new=json.load(open(sys.argv[1])); t.update(new)
if len(sys.argv)>2:
    sk=json.load(open('skip.json')); sk+=json.load(open(sys.argv[2])); json.dump(sk,open('skip.json','w'),ensure_ascii=False)
json.dump(t,open('translations.json','w'),ensure_ascii=False,indent=0); print('total',len(t))
sys.argv=['x']; exec(open(os.path.expanduser('~/tools/mkips.py')).read().replace("if __name__=='__main__':","if False:"))
n,bad=build(json.load(open("translations.json")),os.path.expanduser('~/mnt/eden/load/01000AE025452000/English/exefs/574DC352542F99870185CF37D4BE39893FF24FA6.ips'))
print(n,bad)
