# bank-31 corner bubble: max 3 lines. Tokenise variant bodies for rewriting.
import sys,os,struct,re,json
sys.path.insert(0,os.path.expanduser('~/tools'))
from wmmbanks import banks
def load(p):
  d=open(p,'rb').read();out=[]
  for pos,cnt,size in banks(d):
    b=d[pos:pos+size];t=struct.unpack('<%dI'%cnt,b[4:4+4*cnt]);out.append([b[t[k]:(t[k+1] if k+1<cnt else size)].rstrip(b'\0') for k in range(cnt)])
  return out
TOK=re.compile(rb'(\x01"|\n|\x1bH|\^04~\d+~|\^02|\x02..|\x01C...\x00|\x01J...\x00)',re.S)
def tok(b):
  out=''
  for p in TOK.split(b):
    if not p: continue
    if p==b'\x01"': continue
    if p==b'\n': out+=' / '
    elif p==b'\x1bH': out+='{H}'
    elif p.startswith(b'^04~'): out+='{c'+p[4:-1].decode()+'}'
    elif p==b'^02': out+='{/c}'
    elif p[:1]==b'\x02' and len(p)==3: out+='{v'+p[1:].hex()+'}'
    elif p[:2]==b'\x01C': out+='{r'+p[2:5].hex()+'}'
    elif p[:2]==b'\x01J': out+='{j'+p[2:5].hex()+'}'
    else: out+=p.decode('latin-1')
  return out
def untok(s):
  out=b''
  for p in re.split(r'(\{[^}]*\}| / )',s):
    if not p: continue
    if p==' / ': out+=b'\n'
    elif p=='{H}': out+=b'\x1bH'
    elif p=='{/c}': out+=b'^02'
    elif re.fullmatch(r'\{c\d+\}',p): out+=b'^04~'+p[2:-1].encode()+b'~'
    elif p.startswith('{v'): out+=b'\x02'+bytes.fromhex(p[2:-1])
    elif p.startswith('{r'): out+=b'\x01C'+bytes.fromhex(p[2:-1])+b'\x00'
    elif p.startswith('{j'): out+=b'\x01J'+bytes.fromhex(p[2:-1])+b'\x00'
    else: out+=b'\x01"'+p.encode('latin-1')
  return out
def bodies(m):
  # variant body = text after the condition header up to \x05 terminator
  res=[]
  for v in re.split(rb'\x05\x05\x05|\x05\x05\x04',m):
    v=v.strip(b'\x05')
    # strip leading condition codes (\x02xx\x04..., \x06&, \x06|) up to first text-ish token
    mm=re.search(rb'(\x01"|\^04~|\x01C|\x01J)',v)
    if not mm: continue
    # condition header may contain \x02 var tests; body starts at first text token, but include a var right before?
    s=mm.start()
    body=v[s:]
    if body.strip(): res.append(body)
  return res
def nlines(body): return body.count(b'\n')+1
