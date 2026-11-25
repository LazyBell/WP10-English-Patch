import sys,os,json,struct,re
sys.path.insert(0,os.path.expanduser('~/tools'))
from wmm import decode
def loadf(path,bankfile):
    d=open(path,'rb').read();B=json.load(open(bankfile));banks=[]
    for pos,cnt,size in B:
        bank=d[pos:pos+size];t=struct.unpack('<%dI'%cnt,bank[4:4+4*cnt])
        banks.append([bank[t[k]:(t[k+1] if k+1<cnt else size)] for k in range(cnt)])
    return banks
W=os.path.expanduser('~/work/')
B=loadf(W+'pc/WMM_jp.DAT',W+'pc/pc_banks.json')[20]
def show(m):
    out='';i=0
    for x in re.finditer(rb'(\x02..)|(\x01")|(\x05+\x04?)|([^\x01\x02\x05]+)',m,re.S):
        if x.group(1): out+='{%02x %02x}'%(x.group(1)[1],x.group(1)[2])
        elif x.group(2): out+='|'
        elif x.group(3): out+='<END>'
        else: out+=decode(x.group(4))
    return out
if __name__=='__main__':
    a,b=int(sys.argv[1]),int(sys.argv[2])
    for k in range(a,b): print(k,show(B[k]))
