import unicodedata
M={}
for c in range(0xFF61,0xFFA0):
    h=chr(c);f=unicodedata.normalize('NFKC',h)
    if f not in M: M[f]=h
for c in range(0xFF66,0xFF9E):
    h=chr(c);f=unicodedata.normalize('NFKC',h)
    for dk,ch in (('ﾞ','゙'),('ﾟ','゚')):
        g=unicodedata.normalize('NFC',f+ch)
        if len(g)==1 and g not in M: M[g]=h+dk
def tohw(s): return ''.join(M.get(c,c) for c in s)
