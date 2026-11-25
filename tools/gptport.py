# Port ChatGPT's dinput8_gpt.dll (1.0.1.1) to game 1.0.4.0 by rewriting its hardcoded RVAs/check bytes.
import re,struct,os,sys
sys.path.insert(0,os.path.expanduser('~/tools'))
from v104code import ND,o as co
W=os.path.expanduser('~/work/v104/')
dll=bytearray(open(W+'g.dll','rb').read())
def foff(va):
    r=va-0x180000000
    for v,ro,sz in ((0x1000,0x400,0x5400),(0x7000,0x5800,0xe00),(0x8000,0x6600,0x200),(0x7f000,0x6a00,0x5c00)):
        if v<=r<v+sz: return r-v+ro
    raise Exception(hex(va))
SP={0x49b107:0x4a71e7,0x49b13b:0x4a721b,0x3f8c7:0x3f9d7,0x82557:0x82677,0x3f88f:0x3f99f,0x82526:0x82646,0xff713:0xffd03,
 0x1039a5:0x103f95,0xfe65a:0xfec4a,0x87d56f:0x88eb7f,0x87e4f2:0x88fb02,0x87e56c:0x88fb7c,0x87f048:0x890658,0x87f3c8:0x8909d8,
 0x87d5a3:0x88ebb3,0x87fafd:0x89110d,0x87fbb4:0x8911c4,0x87fbf3:0x891203,0x87ec22:0x890232,0x87c16b:0x88d77b,0x87c547:0x88db57}
TG={0x3f790:0x3f8a0,0x85780:0x858a0,0x5663d0:0x572460,0x1677f9:0x168109,0xb1150:0xb1490,0xb1010:0xb1350,0x87d170:0x88e780,
 0x87bc40:0x88d250,0x87b870:0x88ce40,0x87ed02:0x890312,0x87c140:0x88d750,0x87c176:0x88d786,0x87c295:0x88d8a5,0x87c569:0x88db79}
PG={0x3f000:0x3f000,0x82000:0x82000,0xfe000:0xfe000,0xff000:0xff000,0x103000:0x103000,0x49b000:0x4a7000,
 0x87c000:0x88d000,0x87d000:0x88e000,0x87e000:0x88f000,0x87f000:0x890000,0x3aaa000:0x3ac1000}
DATA={0x3851600:0x3868620,0x2a030b0:0x2a170b0,0x2a030c0:0x2a170c0,0x2a030c8:0x2a170c8,0x2a030d8:0x2a170d8,0x2a030e8:0x2a170e8,
 0x2a031f0:0x2a171f0,0x2a031f8:0x2a171f8,0x2a038d8:0x2a178d8}
olds=[0x2b44fbc,0x2b44fe4,0x2b4500c,0x2b45024,0x2b4503c,0x2b45054,0x2b4507c,0x2b45094,0x2b450bc,0x2b4515c]
news=[0x2b4a35c,0x2b4a384,0x2b4a394,0x2b4a3d4,0x2b4a3e4,0x2b4a3f4,0x2b4a414,0x2b4a424,0x2b4a434,0x2b4a44c]
for a,b in zip(olds,news): DATA[a]=b
for i in range(10): DATA[0x3aaa750+8*i]=0x3ac1d20+8*i
def newval(v):
    if v in TG: return TG[v]
    if v in PG: return PG[v]
    if v in DATA: return DATA[v]
    for b,n in SP.items():
        if 0<=v-b<0x18: return n+(v-b)
    return None
BIG={0x87e000,0x87f000}
lines=open(W+'g_raw.asm').read().splitlines()
ins=[]
for ln in lines:
    m=re.match(r'\s+(18[0-9a-f]{7}):\t((?:[0-9a-f]{2} )+)\s*\t(.*)',ln)
    if m: ins.append((int(m.group(1),16),bytes.fromhex(m.group(2).replace(' ','')),m.group(3))); continue
    m=re.match(r'\s+(18[0-9a-f]{7}):\t((?:[0-9a-f]{2} ?)+)\s*$',ln)
    if m and ins:
        a,b,tx=ins[-1]; ins[-1]=(a,b+bytes.fromhex(m.group(2).replace(' ','')),tx)
changed=0; checks=0; log=[]
for idx,(va,b,txt) in enumerate(ins):
    if '(%rip)' in txt: continue
    for mm in re.finditer(r'(-?)0x([0-9a-f]{5,8})\((%r(?:bx|14))\)',txt):
        v=int(mm.group(2),16); nv=newval(v)
        if nv is None: continue
        neg=mm.group(1)=='-'
        old=struct.pack('<i',-v if neg else v); new=struct.pack('<i',-nv if neg else nv)
        k=b.find(old); assert k>=0,(hex(va),txt)
        fo=foff(va)+k; assert dll[fo:fo+4]==old
        dll[fo:fo+4]=new; changed+=1; log.append((hex(va),txt,hex(nv)))
        # cmp check immediates -> new bytes
        cm=re.match(r'cmp([lwb])\s+\$0x([0-9a-f]+),',txt)
        if cm:
            sz={'l':4,'w':2,'b':1}[cm.group(1)]; imm_old=int(cm.group(2),16)
            ib=imm_old.to_bytes(sz,'little'); j=len(b)-sz
            newbytes=ND[co(nv):co(nv)+sz]
            if b[j:]!=ib:
                assert newbytes==ib,(hex(va),txt,newbytes.hex()); log.append(('  check imm8 unchanged',hex(va))); continue
            dll[foff(va)+j:foff(va)+j+sz]=newbytes; checks+=1
            log.append(('  check',ib.hex(),'->',newbytes.hex()))
        if v in BIG and 'lea' in txt:
            n2=ins[idx+1]
            assert n2[2].startswith('mov') and '$0x1000,%edx' in n2[2],n2
            k2=n2[1].find(struct.pack('<I',0x1000)); fo2=foff(n2[0])+k2
            dll[fo2:fo2+4]=struct.pack('<I',0x2000); log.append(('  size 0x2000',hex(n2[0])))
open(W+'dinput8_gpt_104.dll','wb').write(dll)
for l in log: print(*l)
print('changed',changed,'checks',checks)
