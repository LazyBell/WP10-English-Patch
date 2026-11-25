import sys,os,json,re
sys.path.insert(0,os.path.expanduser('~/tools'))
from wmmbuild import load,segs
from wmm import decode
from tr import look,need,L
def show(bank,start,count,maxchars=9000):
    sd=L('segdict.json',{}); ctx=L('ctx.json',{})
    d,banks=load(); out=[]; n=0; k=start; msgs=banks[bank][1]
    while k<len(msgs) and n<count:
        s=[decode(x) for x in segs(msgs[k])]
        if any(need(x) and look(sd,ctx,bank,k,x) is None for x in s):
            out.append(f'{k}: '+' ¦ '.join(('【'+x+'】') if (need(x) and look(sd,ctx,bank,k,x) is None) else x for x in s)); n+=1
        k+=1
    print('\n'.join(out)[:maxchars]); print('NEXT',k,'of',len(msgs))
if __name__=='__main__': show(int(sys.argv[1]),int(sys.argv[2]),int(sys.argv[3]),int(sys.argv[4]) if len(sys.argv)>4 else 9000)
