import sys,os,json,re
sys.path.insert(0,os.path.expanduser('~/tools'))
from gl_dump import B
from wmm import decode
R=json.load(open('/tmp/gloss.json'))
TOK=re.compile(rb'(\x01")|(\x02[\x10-\x16].)|(\x02[\x17-\x1f])|(\x0a)|(\x1b[KH])|(\x05+\x04?)|([^\x00-\x1f]+)',re.S)
def toks(m):
    out=[]
    for x in TOK.finditer(m):
        if x.group(2): out.append(('L',x.group(2)))
        elif x.group(3): out.append(('L',x.group(3)))
        elif x.group(4): out.append(('N',b'\n'))
        elif x.group(6): out.append(('E',x.group(6)))
        elif x.group(7): out.append(('T',x.group(7)))
        # 01" and 1b K/H dropped (re-added on build); 1bK/H affect decode only
    return out
def readable(m):
    s='';links=[];mode=b''
    # decode with kana mode tracking: re-run decode on concatenated text runs incl 1b codes
    for x in re.finditer(rb'(\x02[\x10-\x1f](?:[^\x00-\x1f])?)|(\x0a)|(\x05+\x04?)|((?:\x01"|\x1b[KH]|[^\x00-\x1f])+)',m,re.S):
        if x.group(1):
            c=x.group(1);links.append(c.hex())
            hint=''
            if len(c)==3 and 0x13<=c[1]<=0x16:
                i=(c[1]-0x10)*32+c[2]+10
                if 0<=i<401: hint=':'+R[i][2]
            s+='[L%d%s]'%(len(links),hint)
        elif x.group(2): s+=' / '
        elif x.group(4): s+=decode(x.group(4).replace(b'\x01"',b''))
    return s,links
if __name__=='__main__':
    out=[]
    for k,m in enumerate(B):
        s,l=readable(m)
        out.append({'k':k,'jp':s,'links':l,'end':re.search(rb'\x05+\x04?$',m).group(0).hex() if re.search(rb'\x05+\x04?$',m) else ''})
    json.dump(out,open(os.path.expanduser('~/work/pc/gl/jp.json'),'w'),ensure_ascii=False,indent=0)
    a,b=int(sys.argv[1]),int(sys.argv[2])
    for o in out[a:b]: print(o['k'],o['jp'])
