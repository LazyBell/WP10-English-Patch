import unicodedata
def hw2kata(c):
    return unicodedata.normalize('NFKC',c)
def kata2hira(s):
    return ''.join(chr(ord(c)-0x60) if 'ァ'<=c<='ヶ' else c for c in s)
def decode(b):
    """decode WMM bytes to readable text; control bytes as <xx>"""
    out=[]; mode='H'; i=0; n=len(b)
    while i<n:
        c=b[i]
        if c==0x1b and i+1<n and b[i+1] in (0x4b,0x48):
            mode='K' if b[i+1]==0x4b else 'H'; i+=2; continue
        if (0x81<=c<=0x9f or 0xe0<=c<=0xfc) and i+1<n:
            out.append(b[i:i+2].decode('cp932','replace')); i+=2; continue
        if 0xa1<=c<=0xdf:
            # gather run incl. dakuten
            j=i
            while j<n and 0xa1<=b[j]<=0xdf: j+=1
            k=unicodedata.normalize('NFKC',b[i:j].decode('cp932'))
            out.append(k if mode=='K' else kata2hira(k).replace('ー','ー')); i=j; continue
        if 0x20<=c<0x7f: out.append(chr(c)); i+=1; continue
        out.append('<%02x>'%c); i+=1
    return ''.join(out)
