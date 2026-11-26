import sys,os,json;os.environ.setdefault('WPVER','104');sys.path.insert(0,os.path.expanduser('~/tools'))
import wmmapply_pc as w
W=w.W;pc=w.loadf(W+'v104/WMM_jp.DAT',W+'v104/pc_banks.json');D=json.load(open(W+'v104/texts_dump.json'))
for key in sys.argv[1:]:
    b,k=map(int,key.split(':'));m=pc[b][1][k]
    print('==',key);print('RAW',w.rstrip0(m)[:400])
    print('JP ',[w.decode(x) for x in w.segs(m)])
    print('EN ',D.get(key))
