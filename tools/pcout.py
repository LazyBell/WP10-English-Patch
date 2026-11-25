import sys,os,json,struct
sys.path.insert(0,os.path.expanduser('~/tools'))
W=os.path.expanduser('~/work/')
def loadf(path,bankfile):
    d=open(path,'rb').read();B=json.load(open(bankfile));banks=[]
    for pos,cnt,size in B:
        bank=d[pos:pos+size];t=struct.unpack('<%dI'%cnt,bank[4:4+4*cnt])
        banks.append([bank[t[k]:(t[k+1] if k+1<cnt else size)] for k in range(cnt)])
    return banks
def jp(): return loadf(W+'pc/WMM_jp.DAT',W+'pc/pc_banks.json')
