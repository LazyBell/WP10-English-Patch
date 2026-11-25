import sys,os,json,re
sys.path.insert(0,os.path.expanduser('~/tools'))
from wmmbuild import *
from wmm import decode
from tr import look,need,L
def apply():
    sd=L('segdict.json',{}); ctx=L('ctx.json',{}); tr=L('wmm_tr.json',{})
    d,banks=load(); edits={}; full=0
    for bi,(pos,msgs) in enumerate(banks):
        for k,m in enumerate(msgs):
            key=f'{bi}:{k}'; ss=segs(m)
            if key in tr and len(tr[key])==len(ss): texts=tr[key]
            else:
                texts=[];ok=True
                for s in (decode(x) for x in ss):
                    if not need(s): texts.append(None); continue
                    v=look(sd,ctx,bi,k,s)
                    if v is None: ok=False;break
                    texts.append(v)
                if not ok or all(t is None for t in texts): continue
            edits[(bi,k)]=repl(m,texts); full+=1
    return full,write_mod(edits)
if __name__=='__main__':
    print(apply()); os.system('python3 ~/tools/add.py ~/work/empty.json >/dev/null')
