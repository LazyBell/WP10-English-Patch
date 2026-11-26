import sys,struct
def parse(fn):
    d=open(fn,'rb').read()
    sig,ver,n,rva=struct.unpack('<IIII',d[:16]);st={}
    for i in range(n):
        t,sz,r=struct.unpack('<III',d[rva+12*i:rva+12*i+12]);st[t]=(sz,r)
    mods=[]
    if 4 in st:
        r=st[4][1];cnt=struct.unpack('<I',d[r:r+4])[0]
        for i in range(cnt):
            o=r+4+108*i;base,size=struct.unpack('<QI',d[o:o+12]);nr=struct.unpack('<I',d[o+20:o+24])[0]
            ln=struct.unpack('<I',d[nr:nr+4])[0];name=d[nr+4:nr+4+ln].decode('utf-16-le')
            mods.append((base,size,name.split('\\')[-1]))
    def where(a):
        for b,s,nm in mods:
            if b<=a<b+s: return f'{nm}+{a-b:#x}'
        return hex(a)
    if 6 in st:
        r=st[6][1];tid=struct.unpack('<I',d[r:r+4])[0];er=r+8
        code,flags=struct.unpack('<II',d[er:er+8]);addr=struct.unpack('<Q',d[er+16:er+24])[0];np=struct.unpack('<I',d[er+24:er+28])[0]
        info=struct.unpack('<%dQ'%np,d[er+32:er+32+8*np]) if np else ()
        ctx_sz,ctx_r=struct.unpack('<II',d[er+32+15*8:er+32+15*8+8])
        print(fn.split('/')[-1],'code',hex(code),'at',where(addr),'info',[hex(x) for x in info])
        c=d[ctx_r:ctx_r+ctx_sz]
        regs=['rax','rcx','rdx','rbx','rsp','rbp','rsi','rdi','r8','r9','r10','r11','r12','r13','r14','r15']
        vals=struct.unpack('<16Q',c[0x78:0x78+128]);rip=struct.unpack('<Q',c[0xf8:0x100])[0]
        print('  rip',where(rip),' '.join(f'{n}={v:x}' for n,v in zip(regs,vals)))
        # stack scan for return addresses in modules
        rsp=vals[4]
        if 5 in st or 9 in st: pass
        return d,mods,rsp,where
if sys.argv[1:2]!=["-s"]:
    for f in sys.argv[1:]: parse(f)

def stack(fn,n=40):
    d=open(fn,'rb').read()
    sig,ver,ns,rva=struct.unpack('<IIII',d[:16]);st={}
    for i in range(ns):
        t,sz,r=struct.unpack('<III',d[rva+12*i:rva+12*i+12]);st[t]=(sz,r)
    res=parse.__globals__  # noop
    out=parse(fn);d,mods,rsp,where=out
    mem=[]
    if 5 in st:
        r=st[5][1];cnt=struct.unpack('<I',d[r:r+4])[0]
        for i in range(cnt):
            o=r+4+16*i;s,sz,rr=struct.unpack('<QII',d[o:o+16]);mem.append((s,sz,rr))
    if 9 in st:
        r=st[9][1];cnt,base=struct.unpack('<QQ',d[r:r+16]);p=base
        for i in range(cnt):
            s,sz=struct.unpack('<QQ',d[r+16+16*i:r+32+16*i]);mem.append((s,sz,p));p+=sz
    for s,sz,rr in mem:
        if s<=rsp<s+sz:
            buf=d[rr+(rsp-s):rr+sz];k=0
            for i in range(0,len(buf)-8,8):
                v=struct.unpack('<Q',buf[i:i+8])[0];w=where(v)
                if w.startswith(('WP10_2026','dinput8','ucrt','msvcp','vcruntime')): print('   ',hex(rsp+i),w);k+=1
                if k>=n: break
            break
if __name__=='__main__' and len(sys.argv)>1 and sys.argv[1]=='-s':
    for f in sys.argv[2:]: stack(f)
