import sys,os,struct,zlib,collections,json,time;sys.path.insert(0,os.path.expanduser('~/tools'))
os.environ.setdefault('WPVER','104')
import ktpc,g1t
S=ktpc.Set('High');FH={}
def rd(e,n):
    off,size,idx=S.loc(e);fn=S.dir+'0x%08x.fdata'%S.rdx[idx]
    f=FH.get(fn) or FH.setdefault(fn,open(fn,'rb'));f.seek(off);return f.read(min(n,size))
def head(e):
    d=rd(e,64); esz,psz,fsz=struct.unpack('<QQQ',d[8:32]); h=esz-psz
    d=rd(e,h+40000);p=d[h:]
    if psz==fsz: return p
    ct=(struct.unpack('<I',d[44:48])[0]>>20)&0xf;cs=struct.unpack('<H',p[0:2])[0]
    return ktpc.lz4(p[10:10+cs],min(16384,fsz)) if ct==5 else zlib.decompress(p[10:10+cs])
P=os.path.expanduser('~/work/pc/fmtscan.json');st=json.load(open(P)) if os.path.exists(P) else {'k':0,'C':{},'odd':[]}
L=[i for i,e in enumerate(S.ents) if e['tk']==0xafbec60c];t0=time.time();k=st['k']
while k<len(L) and time.time()-t0<150:
    i=L[k];k+=1
    try:
        h=head(S.ents[i]); fsz,hs,cnt=struct.unpack('<III',h[8:20]); offs=struct.unpack('<%dI'%cnt,h[hs:hs+4*cnt])
        for o in offs:
            t=h[hs+o:hs+o+8]; f=t[1]; st['C'][hex(f)]=st['C'].get(hex(f),0)+1
            if f not in g1t.FMT and f not in (0,1,0xa): st['odd'].append((i,hex(f),1<<(t[2]&15),1<<(t[2]>>4)))
    except Exception as x: st["C"]["err"]=st["C"].get("err",0)+1; st.setdefault("errs",[]).append([i,S.ents[i]["fs"],repr(x)[:40]])
st['k']=k;json.dump(st,open(P,'w'));print(k,len(L),st['C'],len(st['odd']),st['odd'][:20])
