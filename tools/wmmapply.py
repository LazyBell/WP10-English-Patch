import sys,os,json,re
sys.path.insert(0,os.path.expanduser('~/tools'))
from wmmbuild import *
from wmm import decode
from tr import look,need,L
from wrap import wrap
def space(m,texts):
    ms=list(SEG.finditer(m)); out=list(texts)
    for i,x in enumerate(ms):
        t=out[i]
        if not t: continue
        prev=m[(ms[i-1].end() if i else 0):x.start()]
        nxt=m[x.end():(ms[i+1].start() if i+1<len(ms) else len(m))]
        cut=min([j for j in (nxt.find(b'\x0a'),nxt.find(b'\x05')) if j>=0] or [len(nxt)])
        if b'\x02' in prev and not any(c in prev for c in (b'\x0a',b'\x05',b'\x04')) and (t[0].isalnum() or t[0] in '('):
            t=' '+t
        if b'\x02' in nxt[:cut] and (t[-1].isalnum() or t[-1] in ',.:;!?)'):
            t=t+' '
        out[i]=t
    return out
def apply():
    sd=L('segdict.json',{}); ctx=L('ctx.json',{}); tr=L('wmm_tr.json',{}); b5=L('b5dict.json',{})
    d,banks=load(); edits={}; full=0
    for bi,(pos,msgs) in enumerate(banks):
        for k,m in enumerate(msgs):
            key=f'{bi}:{k}'; ss=segs(m)
            if bi==5 and k<722: continue
            if key in tr and len(tr[key])==len(ss): texts=tr[key]
            else:
                texts=[];ok=True
                for s in (decode(x) for x in ss):
                    if not need(s): texts.append(None); continue
                    v=b5.get(s) if bi==5 else look(sd,ctx,bi,k,s)
                    if v is None: ok=False;break
                    texts.append(v)
                if not ok or all(t is None for t in texts): continue
            edits[(bi,k)]=wrap(repl(m,space(m,texts)),bi); full+=1
    return full,write_mod(edits)
if __name__=='__main__':
    print(apply()); os.system('python3 ~/tools/add.py ~/work/empty.json >/dev/null')
