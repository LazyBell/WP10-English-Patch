from nx import *
import pickle,sys
fl=pickle.load(open('files.pkl','rb'))
root=hfs0(struct.unpack('<Q',rd(0x130,8))[0]); sec=hfs0(root['secure'][0])
n=NCA(*sec['96c6a6d3cb8bc99b5ea2de8bce80b681.nca'])
s=[x for x in n.secs if x['fstype']==0][0]
want=sys.argv[1:]
for p,o,sz in fl:
    if p in want:
        out=os.path.expanduser('~/work'+p); os.makedirs(os.path.dirname(out),exist_ok=True)
        with open(out,'wb') as w:
            pos=0
            while pos<sz:
                c=min(16<<20,sz-pos); w.write(n.read(s,o+pos,c)); pos+=c
        print('ok',p,sz)
