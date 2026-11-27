# compare per-page line counts JP vs built EN WMM; lists pages where EN has more lines than JP (overflow risk in fixed-line boxes)
import sys,os,json,re,struct;os.environ.setdefault('WPVER','104');sys.path.insert(0,os.path.expanduser('~/tools'))
import wmmapply_pc as w
from collections import Counter
W=w.W;jp=w.loadf(W+'v104/WMM_jp.DAT',W+'v104/pc_banks.json');en=w.loadf(W+'pc_out104/WMM.DAT',W+'pc/en_banks_tmp.json')
def pages(m): return [p for p in re.split(rb'\x05+|\x1bH',w.rstrip0(m)) if p.strip(b'\x04\x00')]
c=Counter();ex=[];mis=0
for b in range(len(jp)):
    for k,(a,e) in enumerate(zip(jp[b][1],en[b][1])):
        pj,pe=pages(a),pages(e)
        if len(pj)!=len(pe): mis+=1; continue
        for n,(x,y) in enumerate(zip(pj,pe)):
            lx=x.count(b'\n')+1;ly=y.count(b'\n')+1
            if ly>lx: c[(lx,ly)]+=1; ex.append((b,k,n,lx,ly))
print('page-count mismatches',mis);print(sorted(c.items()));print(Counter(e[0] for e in ex).most_common(60))
json.dump(ex,open(W+'pc/linecount_over.json','w'))
