import json,struct,os,sys
W=os.path.expanduser('~/work/')
E=[(ir+3,t.encode('latin-1')) for ir,t in json.load(open(W+'v104/coderel.json'))]
if os.path.exists(W+'v104/coderel_wordwrap.json_DISABLED'):
    for x in json.load(open(W+'v104/coderel_wordwrap.json_DISABLED')):
        E.append((x[0],x[1].encode('latin-1')) if isinstance(x[1],str) else (x[0],bytes(x[1])))
out=b'WPCR'+struct.pack('<I',len(E))+b''.join(struct.pack('<IH',r,len(b))+b for r,b in E)
open(sys.argv[1],'wb').write(out); print(len(E),len(out))
