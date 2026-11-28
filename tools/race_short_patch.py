import json,sys,mmap,os
M=json.load(open(os.path.expanduser('~/work/race_short_manual.json')))
fn=sys.argv[1]; undo=sys.argv[2]; dry=len(sys.argv)>3
f=open(fn,'r+b'); m=mmap.mmap(f.fileno(),0)
U=[];tot=0
for s,new in M.items():
    cut=s[:32].rstrip().encode('cp932'); nb=new.encode('cp932')
    assert len(nb)<=len(cut)
    pat=b'\0'+cut+b'\0'; i=m.find(pat); c=0
    while i>=0:
        o=i+1; U.append([o,cut.hex()])
        if not dry: m[o:o+len(cut)]=nb+b'\0'*(len(cut)-len(nb))
        c+=1; i=m.find(pat,i+1)
    tot+=c
    if c==0: print('none',s)
print('patched',tot,'dry' if dry else '')
if not dry: json.dump(U,open(undo,'w')); m.flush()
