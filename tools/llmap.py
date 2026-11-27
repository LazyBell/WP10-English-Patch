# map WP10_loadlog.txt READ lines -> High rdb entries; print entries loaded in a tick window or near a given entry
import os,sys,bisect;os.environ.setdefault('WPVER','104');sys.path.insert(0,os.path.expanduser('~/tools'))
import ktpc
S=ktpc.Set('High');M={}
for i,e in enumerate(S.ents):
    try: off,size,idx=S.loc(e)
    except Exception: continue
    M.setdefault(S.rdx[idx],[]).append((off,i))
for v in M.values(): v.sort()
LOG=os.path.expanduser('~/mnt/Desktop/WINNING POST 10 TRANSLATION/Winning Post 10 2026/WP10_loadlog.txt')
out=[]
for ln in open(LOG,errors='ignore'):
    p=ln.split()
    if len(p)>=4 and p[1]=='READ':
        k=int(p[2],16);o=int(p[3],16)
        if k in M:
            L=M[k];j=bisect.bisect_right(L,(o,1<<40))-1
            if j>=0: out.append((int(p[0],16),L[j][1]))
tgt=set(map(int,sys.argv[1:]))
for n,(t,i) in enumerate(out):
    if i in tgt:
        print('found',i,'tick',t)
        for t2,i2 in out[max(0,n-15):n+25]: print(' ',t2,i2,hex(S.ents[i2]['tk']))
print(len(out),'reads mapped')
