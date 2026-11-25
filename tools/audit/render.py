import os,json,struct,re,sys
W=os.path.expanduser('~/work/')
def banks(path):
    d=open(path,'rb').read();B=json.load(open(W+'pc/pc_banks.json'));out=[];p=0
    for bi,(_,cnt,_) in enumerate(B):
        offs=struct.unpack_from('<%dI'%cnt,d,p+4);out.append((p,cnt,offs))
        if bi+1<len(B):
            nc=B[bi+1][1];q=p+offs[-1]+1;q+=(-q)%0x40
            while not (struct.unpack_from('<I',d,q)[0]==nc and struct.unpack_from('<I',d,q+4)[0]==4+4*nc): q+=0x40
            p=q
    return d,out
def msg(d,bk,bi,k):
    p,cnt,offs=bk[bi];e=p+offs[k+1] if k+1<cnt else (bk[bi+1][0] if bi+1<len(bk) else len(d));return d[p+offs[k]:e]
TXT=re.compile(rb'\x01"((?:\x1b[KH]|[^\x00-\x1f])*)')
def render(m):
    o='';i=0
    while i<len(m):
        mt=TXT.match(m,i)
        if mt: o+=mt.group(1).decode('cp932','replace');i=mt.end();continue
        c=m[i]
        if m[i:i+3]==b'\x02\x01\xc8': o+='{YOU}';i+=3;continue
        if c==2 and i+2<len(m) and m[i+2]>=0x80: o+='{V}';i+=3;continue
        if c==1 and i+1<len(m) and m[i+1]==0x43: o+='{N}';i+=6;continue
        if c==0x0a: o+=' / '
        elif c==5:
            o+=' | '
            while i+1<len(m) and m[i+1]==5: i+=1
        i+=1
    return re.sub(r'(\s*\|\s*)+$','',o)
if __name__=='__main__':
    d,bk=banks(W+'pc_out/WMM.DAT')
    for key in sys.argv[1:]:
        b,k=map(int,key.split(':'));print(key,render(msg(d,bk,b,k)))
