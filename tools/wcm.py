import sys,os,json
W=os.path.expanduser('~/work/'); MOD=os.path.expanduser('~/mnt/eden/load/01000AE025452000/English/romfs/WCM.DAT')
D=open(W+'WCM.DAT','rb').read(); P=D.split(b'\x00')[:-1] if D.endswith(b'\x00') else D.split(b'\x00')
def L(): 
    p=W+'wcm_tr.json'; return json.load(open(p)) if os.path.exists(p) else {}
def jp(i): return P[i].decode('cp932')
def show(n,start=0,maxc=24000):
    tr=L(); out=[]; c=0
    for i in range(start,len(P)):
        if str(i) in tr or not any(b>127 for b in P[i]): continue
        s=f'{i}[{len(P[i])}]={jp(i)}'; out.append(s); c+=len(s)
        if len(out)>=n or c>maxc: break
    print('\n'.join(out))
def apply(fn):
    tr=L(); ok=0; over=[]; bad=[]
    for l in open(fn,encoding='utf8'):
        l=l.rstrip('\n')
        if '=' not in l: continue
        i,e=l.split('=',1); i=int(i.split('[')[0])
        if any(ord(c)>126 for c in e) or not e: bad.append(i); continue
        if len(e.encode())>len(P[i]): over.append((i,len(e)-len(P[i]))); continue
        tr[str(i)]=e; ok+=1
    json.dump(tr,open(W+'wcm_tr.json','w'),ensure_ascii=False); print('ok',ok,'over',over,'bad',bad,'total',len(tr))
def build():
    tr=L(); out=[]
    for i,p in enumerate(P):
        e=tr.get(str(i))
        out.append(e.encode().ljust(len(p),b' ') if e is not None else p)
    b=b'\x00'.join(out)+(b'\x00' if D.endswith(b'\x00') else b'')
    assert len(b)==len(D); open(MOD,'wb').write(b); print('built',len(tr))
if __name__=='__main__':
    a=sys.argv
    if a[1]=='show': show(int(a[2]),int(a[3]) if len(a)>3 else 0)
    elif a[1]=='apply': apply(a[2])
    else: build()
