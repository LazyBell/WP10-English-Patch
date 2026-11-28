import json,re,os,sys
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__)))
from check import load,lines,tw
M=load()
V=json.load(open('variants.json'))
out=[];miss=0
for k in ('130','131'):
    segs=[]
    for v in V[k]:
        for i,c,jp,en in v:
            if en is None: segs.append(''); continue
            nums=re.findall(r'\b[2-7]\b',en); key=re.sub(r'\b[2-7]\b','N',en)
            if key not in M: miss+=1; segs.append(en); continue
            s=M[key]; it=iter(nums)
            s=re.sub(r'(?<![A-Za-z])N(?=[ f]|$)',lambda m:next(it,'N'),s)
            assert 'N ' not in s.replace('No. ','') or True
            segs.append(s)
    out.append(f'35:{k}|'+' ¦ '.join(segs))
print('miss',miss)
open(os.path.expanduser('~/work/pc/seg_over/zzzzzz_note.txt'),'w',encoding='utf8').write('# World Top 100 Note bubbles: short texts (3 lines max), see work/note\n'+'\n'.join(out)+'\n')
# sanity: any leftover N placeholders
for o in out:
    for s in o.split('|',1)[1].split(' ¦ '):
        if re.search(r'(?<![A-Za-z])N(?=[ f])',s): print('LEFT N',s)
        L=lines(s)
        if len(L)>3: print('LONG',s)
