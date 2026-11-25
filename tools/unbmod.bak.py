# build modified DATA.UNB in Eden mod folder from original + raw-entry patches
import pickle,os,json,shutil,sys
W=os.path.expanduser('~/work/')
OUT=os.path.expanduser('~/mnt/eden/load/01000AE025452000/English/romfs/DATA.UNB')
def build(patches):  # patches: list of (entry_index, offset_in_entry, bytes)
    E=pickle.load(open(W+'unb_E.pkl','rb'))
    if not os.path.exists(OUT) or os.path.getsize(OUT)!=os.path.getsize(W+'DATA.UNB'):
        shutil.copyfile(W+'DATA.UNB',OUT)
    else:
        # restore original first for touched entries
        pass
    f=open(OUT,'r+b'); o=open(W+'DATA.UNB','rb')
    touched=set(i for i,_,_ in patches)
    for i in touched:
        off,x,unc,comp=E[i]; assert unc==comp,'compressed entry %d'%i
        o.seek(off); f.seek(off); f.write(o.read(comp))
    for i,a,b in patches:
        off,x,unc,comp=E[i]; assert a+len(b)<=unc
        f.seek(off+a); f.write(b)
    f.close(); return len(patches)

UNH_OUT=os.path.join(os.path.dirname(OUT),'DATA.UNH')
def relocate(repl):  # repl: {entry_index: raw bytes}; appended at end of DATA.UNB, DATA.UNH rewritten
    import struct
    base=os.path.getsize(W+'DATA.UNB')
    f=open(OUT,'r+b'); f.truncate(base); f.seek(base)
    h=bytearray(open(W+'DATA.UNH','rb').read())
    pos=base
    for i in sorted(repl):
        d=repl[i]; pad=(-pos)%0x800; f.write(b'\0'*pad); pos+=pad
        f.write(d)
        a=0x20+24*i; off,x,unc,comp=struct.unpack('<QQII',h[a:a+24])
        h[a:a+24]=struct.pack('<QQII',pos,x,len(d),len(d)); pos+=len(d)
    f.write(b'\0'*((-pos)%0x800)); f.close()
    open(UNH_OUT,'wb').write(h); return pos
