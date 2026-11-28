import sys,json,struct,os
G=sys.argv[1]; dry=len(sys.argv)>2
W=os.path.expanduser('~/work/')
h=open(G+'/DATA.UNH','rb').read(); EP=[struct.unpack_from('<QQII',h,0x20+24*i) for i in range((len(h)-0x20)//24)]
P=json.load(open(W+'unb_patches_famsjis.json')); EN=json.load(open(W+'famsjis_en.json')); JP={v.encode():k.encode('cp932') for k,v in EN.items()}
f=open(G+'/DATA.UNB','rb' if dry else 'r+b'); ok=done=bad=0
for i,a,hx in P:
    off,x,unc,comp=EP[i]; assert unc==comp
    b=bytes.fromhex(hx); f.seek(off+a); cur=f.read(len(b))
    if cur==b: done+=1; continue
    e=b.rstrip(b'\0'); jp=JP[e]
    if cur[:len(jp)]!=jp: bad+=1; print('mismatch',i,a,cur[:20]); continue
    ok+=1
    if not dry: f.seek(off+a); f.write(b)
f.close(); print(G,'to write',ok,'already',done,'mismatch',bad)
