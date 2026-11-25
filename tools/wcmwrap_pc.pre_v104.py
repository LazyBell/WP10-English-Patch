# wrap English WCM essays with real newlines (0x0a replaces a space -> same length, always fits).
# entries containing the game's literal "\n" markup are left alone (different screen).
import sys,os,json,collections
sys.path.insert(0,os.path.expanduser('~/tools'))
from wrap import tw
import wcm
W=os.path.expanduser('~/work/');LIM=1700
M=os.path.expanduser('~/mnt/eden/load/01000AE025452000/English/romfs/WCM.DAT')
tr=wcm.L();src=open(M,'rb').read();parts=src.split(b'\x00');st=collections.Counter()
for i,p in enumerate(wcm.P):
    e=tr.get(str(i))
    if e is None: continue
    if '\\n' in e: st['skip_markup']+=1;continue
    words=e.split(' ');lines=[];line=''
    for w in words:
        t=(line+' '+w) if line else w
        if line and tw(t)>LIM: lines.append(line);line=w
        else: line=t
    lines.append(line);new='\n'.join(lines).encode()
    if len(new)!=len(e.encode()): st['mismatch']+=1;continue
    assert parts[i].startswith(e.encode())
    parts[i]=new.ljust(len(parts[i]),b' ');st['wrapped']+=1
OV=json.load(open(W+'pc/wcm_over.json')) if os.path.exists(W+'pc/wcm_over.json') else {}
for k,e in OV.items():
    i=int(k);words=e.split(' ');lines=[];line=''
    for w in words:
        t=(line+' '+w) if line else w
        if line and tw(t)>LIM: lines.append(line);line=w
        else: line=t
    lines.append(line);new='\n'.join(lines).encode()
    assert len(new)<=len(parts[i]),(k,len(new),len(parts[i]))
    parts[i]=new.ljust(len(parts[i]),b' ');st['over']+=1;print('over',k,len(lines),'lines')
out=b'\x00'.join(parts);assert len(out)==len(src)
open(W+'pc_out/WCM.DAT','wb').write(out);print(st)
