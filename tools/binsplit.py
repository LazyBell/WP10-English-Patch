# write a test WP10_EN.bin containing a subset of records: usage binsplit.py MODE [lo hi]  (MODE: noreloc | range lo hi (index range of type0 text recs) )
import struct,os,sys,json
W=os.path.expanduser('~/work/');G=os.path.expanduser('~/mnt/Winning post 10 pc/Winning Post 10 2026/')
d=open(W+'pc_out/WP10_EN.bin','rb').read();n=struct.unpack_from('<I',d,4)[0];p=8;R=[]
for i in range(n):
    t,rva,ln=struct.unpack_from('<BII',d,p);R.append((t,rva,d[p:p+9+ln]));p+=9+ln
tbl=[r for r in R if r[0]==0 and r[1]>=0x3851600 and len(r[2])==17]
txt=sorted([r for r in R if r[0]==0 and r not in tbl],key=lambda r:r[1]);rel=[r for r in R if r[0]==1]
m=sys.argv[1]
if m=='noreloc': keep=tbl+txt
elif m=='range': lo,hi=int(sys.argv[2]),int(sys.argv[3]); keep=tbl+txt[lo:hi]+(rel if len(sys.argv)>4 else [])
elif m=='full': keep=R
out=b'WPEN'+struct.pack('<I',len(keep))+b''.join(r[2] for r in keep)
open(G+'WP10_EN.bin','wb').write(out);print(m,'kept',len(keep),'text',len(txt),'reloc',len(rel),'tbl',len(tbl))
