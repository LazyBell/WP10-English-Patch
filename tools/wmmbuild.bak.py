import struct,json,os,sys
W=os.path.expanduser('~/work/')
DATA_MEM=0x43fd000; TBL=2540592
def load():
    d=open(W+'WMM.DAT','rb').read(); B=json.load(open(W+'wmm_banks.json'))
    banks=[]
    for pos,cnt,size in B:
        bank=d[pos:pos+size]; t=list(struct.unpack('<%dI'%cnt,bank[4:4+4*cnt]))
        # message end = next start; last message ends at end of non-padding
        msgs=[]
        for k in range(cnt):
            e=t[k+1] if k+1<cnt else size
            msgs.append(bank[t[k]:e])
        banks.append((pos,msgs))
    return d,banks
def build(edits):
    """edits: {(bank,msg): bytes}"""
    d,banks=load(); out=bytearray(); newpos=[]
    for bi,(pos,msgs) in enumerate(banks):
        newpos.append(len(out))
        cnt=len(msgs); body=bytearray(); offs=[]
        hdr=4+4*cnt
        for k,m in enumerate(msgs):
            m=edits.get((bi,k),m)
            offs.append(hdr+len(body)); body+=m
        bank=struct.pack('<I',cnt)+struct.pack('<%dI'%cnt,*offs)+body
        out+=bank
        while len(out)%0x40: out+=b'\0'
    # exe table patch
    da=open(W+'main_data.bin','rb').read()
    old=[p for p,_ in banks]; m=dict(zip(old,newpos))
    recs=[]; i=TBL
    while True:
        v=struct.unpack('<Q',da[i:i+8])[0]
        if v not in m: break
        if m[v]!=v: recs.append((DATA_MEM+i+0x100, struct.pack('<Q',m[v])))
        i+=8
    return bytes(out),recs,(i-TBL)//8
def enc_lines(*lines, tail=b'\x05\x05\x05'):
    parts=[b'\x01"'+l.encode('ascii') for l in lines]
    return b'\x0a'.join(parts)+tail
def write_mod(edits):
    o,recs,n=build(edits)
    p=os.path.expanduser('~/mnt/eden/load/01000AE025452000/English/romfs/WMM.DAT')
    open(p,'wb').write(o)
    json.dump([[a,b.hex()] for a,b in recs],open(W+'extra_ips.json','w'))
    return len(o),len(recs)
import re as _re
SEG=_re.compile(rb'\x01"((?:[\x1b][KH]|[^\x00-\x1f])*)')
def segs(m): return [x.group(1) for x in SEG.finditer(m)]
def repl(m, texts):
    it=iter(texts)
    def f(x):
        t=next(it)
        return x.group(0) if t is None else b'\x01"'+t.encode('ascii')
    return SEG.sub(f,m)
