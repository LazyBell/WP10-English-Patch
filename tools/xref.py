import sys,struct
t=open('/sessions/'+__import__('os').environ.get('USER','x')+'/work/main_text.bin','rb').read() if False else open(__import__('os').path.expanduser('~/work/main_text.bin'),'rb').read()
target=int(sys.argv[1],0)
N=len(t)//4
w=struct.unpack('<%dI'%N,t[:N*4])
for i,x in enumerate(w):
    if (x&0x9f000000)==0x90000000:
        rd=x&31; immlo=(x>>29)&3; immhi=(x>>5)&0x7ffff
        imm=((immhi<<2)|immlo)<<12
        if imm&(1<<32): imm-=1<<33
        page=((i*4)&~0xfff)+imm
        if page!=target&~0xfff: continue
        for j in range(i+1,min(i+64,N)):
            y=w[j]
            if (y&0xffc00000)==0x91000000 and ((y>>5)&31)==rd:
                if page+((y>>10)&0xfff)==target: print(hex(i*4))
