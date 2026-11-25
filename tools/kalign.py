# learn per-kanji readings from (word, reading) pairs; align names to split surname/given
from collections import defaultdict
SMALL='ャュョッーンァィゥェォ'
def learn(pairs,iters=4):
    CR=defaultdict(set)
    for w,r in pairs:
        if len(w)==1 and r: CR[w].add(r)
    for _ in range(iters):
        add=[]
        for w,r in pairs:
            if len(w)<2 or not r: continue
            for sol in align(w,r,CR,allow_unknown=1):
                for k,rr in sol: 
                    if rr not in CR[k]: add.append((k,rr))
        for k,rr in add: CR[k].add(rr)
    return CR
def align(w,r,CR,allow_unknown=0,limit=3):
    out=[]
    def rec(i,j,acc,unk):
        if len(out)>=limit: return
        if i==len(w):
            if j==len(r): out.append(list(acc))
            return
        k=w[i]
        for rr in CR.get(k,()):
            if r.startswith(rr,j): rec(i+1,j+len(rr),acc+[(k,rr)],unk)
        if unk<allow_unknown:
            for L in range(1,5):
                if j+L<=len(r) and (j+L==len(r) or r[j+L] not in SMALL):
                    rec(i+1,j+L,acc+[(k,r[j:j+L])],unk+1)
    rec(0,0,[],0)
    return out
def split(full,R,CR,prefs):
    for p in prefs:
        if not 0<p<len(full): continue
        for unk in (0,1,2):
            sols=align(full,R,CR,unk,limit=1)
            if sols:
                n=sum(len(rr) for k,rr in sols[0][:p]); return R[:n],R[n:]
    return None
