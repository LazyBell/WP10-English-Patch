def lz4_block(src, maxout=None):
    i=0; out=bytearray(); n=len(src)
    while i<n:
        t=src[i]; i+=1
        ll=t>>4
        if ll==15:
            while True:
                b=src[i]; i+=1; ll+=b
                if b!=255: break
        out+=src[i:i+ll]; i+=ll
        if i>=n: break
        off=src[i]|(src[i+1]<<8); i+=2
        ml=t&15
        if ml==15:
            while True:
                b=src[i]; i+=1; ml+=b
                if b!=255: break
        ml+=4
        if off==0 or off>len(out): raise ValueError('bad off %d at %d'%(off,i))
        for k in range(ml): out.append(out[-off])
        if maxout and len(out)>=maxout: break
    return bytes(out)
