import struct,re,collections,os,json
W=os.path.expanduser('~/work/')
def tab(h): return [struct.unpack_from('<QQII',h,0x20+24*i) for i in range((len(h)-0x20)//24)]
E_=tab(open(W+'pc_out/DATA.UNH','rb').read());f=open(W+'pc_out/DATA.UNB','rb')
RX=re.compile(rb'\x00((?:[\x88-\x9f\xe0-\xea][\x40-\xfc]|\x82[\x9f-\xf1]|\x83[\x40-\x96]|\x81[\x5b\x45\x41\x42\x69\x6a\x75\x76]){2,})\x00')
c=collections.Counter();ex=collections.defaultdict(list)
for i,(off,x,unc,comp) in enumerate(E_):
    if unc!=comp: continue
    f.seek(off);d=f.read(comp)
    for m in RX.finditer(d):
        try:u=m.group(1).decode('cp932')
        except:continue
        c[i]+=1
        if len(ex[i])<6: ex[i].append(u)
print(sum(c.values()));
for i,n in c.most_common(60): print(i,n,ex[i])
