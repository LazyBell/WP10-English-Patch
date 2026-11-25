# horse-name code encode/decode
def enc_kana(s):
    o=bytearray()
    for ch in s:
        if ch=='ー': o.append(0xfe)
        else:
            v=ord(ch)-0x30A0
            assert 0<v<0x57,ch
            o.append(v)
    return bytes(o)
def dec(b):
    s=''
    for c in b:
        if c==0: break
        if c<=0x56: s+=chr(0x30A0+c)
        elif c<=0x60: s+=chr(0xFF10+c-0x57)
        elif c<=0x6a: s+=chr(c-0x31)
        elif c<=0x84: s+=chr(c-0x2a)
        elif c<=0x9e: s+=chr(c-0x24)
        elif c==0x9f: s+=' '
        elif c==0xa0: s+="'"
        elif c==0xa1: s+='.'
        elif c==0xfd: s+='-'
        elif c==0xfe: s+='ー'
        else: s+='<%02x>'%c
    return s
def enc_en(s):
    o=bytearray()
    for ch in s:
        if '0'<=ch<='9': o.append(ord(ch)+0x31)
        elif 'A'<=ch<='Z': o.append(ord(ch)+0x2a)
        elif 'a'<=ch<='z': o.append(ord(ch)+0x24)
        elif ch==' ': o.append(0x9f)
        elif ch=="'": o.append(0xa0)
        elif ch=='.': o.append(0xa1)
        elif ch=='-': o.append(0xfd)
        else: raise ValueError(ch)
    return bytes(o)
