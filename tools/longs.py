import json,os,sys
os.chdir(os.path.expanduser('~/work'))
exec(open(os.path.expanduser('~/tools/mkips.py')).read().replace("if __name__=='__main__':","if False:"))
t=json.load(open('translations.json'))
n,bad=build(t,'/tmp/x.ips')
for b in bad:
    if b[0]=='long': print(json.dumps(b[1],ensure_ascii=False),b[3],b[4],b[2])
