import sys,struct
def load(fn):
    d=open(fn,'rb').read();sig,ver,ns,rva=struct.unpack('<IIII',d[:16]);st={}
    for i in range(ns):
        t,sz,r=struct.unpack('<III',d[rva+12*i:rva+12*i+12]);st[t]=(sz,r)
    mods=[];r=st[4][1];cnt=struct.unpack('<I',d[r:r+4])[0]
    for i in range(cnt):
        o=r+4+108*i;base,size=struct.unpack('<QI',d[o:o+12]);nr=struct.unpack('<I',d[o+20:o+24])[0]
        ln=struct.unpack('<I',d[nr:nr+4])[0];mods.append((base,size,d[nr+4:nr+4+ln].decode('utf-16-le').split('\\')[-1]))
    mem=[]
    if 9 in st:
        r=st[9][1];cnt,base=struct.unpack('<QQ',d[r:r+16]);p=base
        for i in range(cnt):
            s,sz=struct.unpack('<QQ',d[r+16+16*i:r+32+16*i]);mem.append((s,sz,p));p+=sz
    if 5 in st:
        r=st[5][1];cnt=struct.unpack('<I',d[r:r+4])[0]
        for i in range(cnt):
            o=r+4+16*i;s,sz,rr=struct.unpack('<QII',d[o:o+16]);mem.append((s,sz,rr))
    def rd(a,n):
        for s,sz,rr in mem:
            if s<=a and a+n<=s+sz: return d[rr+a-s:rr+a-s+n]
        return None
    return d,mods,mem,rd
if __name__=='__main__':
    d,mods,mem,rd=load(sys.argv[1])
    exe=[m for m in mods if m[2]=='WP10_2026.exe'][0][0]
    print('exe base',hex(exe),'mem ranges',len(mem),'total',sum(m[1] for m in mem)>>20,'MB')
    for g in (0x3fc30d8,0x3fc30f8,0x3fc3118):
        v=rd(exe+g,32);print(hex(g),v.hex() if v else None)
        if v:
            p=struct.unpack('<Q',v[8:16])[0];b=rd(p-64,256);print('  ptr',hex(p),b)
