import sys,os,json,re
sys.path.insert(0,os.path.expanduser('~/tools'))
from race import *
EN=json.load(open(W+'race_en.json'))
AB=[("Breeders' Cup","BC"),("Invitational","Inv."),("Handicap","H."),("Stakes","S."),("Tokubetsu","Tok."),("Memorial","Mem."),("Championship","Ch."),("International","Intl."),("Juvenile","Juv."),("Fillies'","F."),("Fillies","F."),("Classic","Cl."),("Sankei Sports","Sankei"),("Sponichi Sho ",""),("Sponichi Cup ",""),("Nikkan Sports Sho ",""),("Nikkan Sports Cup ",""),("Hochi Hai ",""),("Hochi Cup ",""),("MAFF Prize ",""),("MAFF Minister's Prize ","")]
def short(s,lim=22):
    for a,b in AB:
        if len(s)<=lim: break
        s=s.replace(a,b)
    return s[:32].rstrip()
def tiny(s):
    m=re.search(r'(\d)-Win',s)
    if m: return m.group(1)+'Win'
    if 'Maiden' in s: return 'Mdn'
    if 'Newcomer' in s or 'Debut' in s: return 'Deb'
    if 'Open' == s.strip(): return 'Open'
    t=re.sub(r"^(Prix (de l'|de la |du |des |de |d')?|Premio |Gran Premio |Grosser Preis (von |der )?|Grand Prix (de |d')?|The |\(Old\) |Saga Shimbun Cup |Chunichi Sports Cup |Sankei Sports |Sponichi (Sho|Cup) |Nikkan Sports (Sho|Cup) |Hochi (Hai|Cup) |Daily Hai |Keio Hai |Kyodo News Hai |Asahi Hai |Mainichi Hai |MAFF (Minister's )?Prize |Fuji TV Sho |Nishinippon Sports Cup )",'',s)
    if t.startswith(('Japan Cup','Japanese Derby','Japanese Oaks')): return {'Japan Cup':'JC','Japanese Derby':'Dby','Japanese Oaks':'Oaks'}[[k for k in ('Japan Cup','Japanese Derby','Japanese Oaks') if t.startswith(k)][0]]
    w=re.sub(r'[^A-Za-z0-9 ]','',t).split()
    if not w: return s[:4]
    if w[0].isdigit() and len(w)>1: return (w[0]+w[1][:1])[:4]
    return w[0][:4]
def go():
    A=load(244);R=load(504);C=load(573)
    A2=list(A);R2=list(R);C2=list(C)
    for k in range(0,N,2):
        e=EN[A[k]]; e=e if len(e)<=48 else short(e,48)
        sh=short(EN[A[k]])
        A2[k]=e;A2[k+1]=sh;R2[k]=sh;C2[k]=sh;C2[k+1]=tiny(EN[A[k]])
    return {244:pack(A2,244),504:pack(R2,504),573:pack(C2,573)}
if __name__=='__main__':
    out=go()
    for i,d in out.items(): print(i,len(d),os.path.getsize(W+'unb3/%04d.bin'%i))
    A=load(244)
    import random;random.seed(3)
    for k in random.sample(range(0,N,2),15): print(EN[A[k]],'|',short(EN[A[k]]),'|',tiny(EN[A[k]]))
