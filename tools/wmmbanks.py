# Derive WMM.DAT bank table (pos,cnt,size) by walking the file (banks are contiguous).
import struct,sys,json
def banks(d):
    out=[];pos=0
    while pos<len(d):
        cnt=struct.unpack_from('<I',d,pos)[0]
        t=struct.unpack_from('<%dI'%cnt,d,pos+4)
        last=pos+t[-1]; end=d.index(b'\0',last)  # end of last message
        # next bank: first 64-aligned offset after end whose u32 looks like a count and offsets make sense
        nxt=(end+1+63)//64*64
        while nxt<len(d):
            c=struct.unpack_from('<I',d,nxt)[0]
            if 0<c<5000 and struct.unpack_from('<I',d,nxt+4)[0]==4+4*c: break
            nxt+=64
        out.append([pos,cnt,min(nxt,len(d))-pos]); pos=nxt
    return out
if __name__=='__main__':
    b=banks(open(sys.argv[1],'rb').read()); print(len(b)); 
    if len(sys.argv)>2: json.dump(b,open(sys.argv[2],'w'))
