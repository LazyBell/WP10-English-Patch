import struct,os,sys
from PIL import Image
import numpy as np, rsrc
src=sys.argv[1];dst=sys.argv[2]
d=bytearray(open(src,'rb').read())
done=0
for p,f,s,e in rsrc.out:
    if p[0]!=2:continue
    fn=f'en/{p[1]}.png'
    if not os.path.exists(fn):continue
    w,h,pl,bpp=struct.unpack_from('<iiHH',d,f+4);hdr=struct.unpack_from('<I',d,f)[0]
    stride=((w*bpp+31)//32)*4;nb=bpp//8
    im=np.array(Image.open(fn).convert('RGB'))
    if h>0: im=im[::-1]
    for y in range(abs(h)):
        row=f+hdr+y*stride
        for x in range(w):
            r,g,b=im[y,x]; d[row+x*nb:row+x*nb+3]=bytes((b,g,r))
    done+=1
S={0x16b340:'Could not start Winning Post 10 2026.\nThe installation may not have completed correctly.',
0x16b3a8:'Could not find the Winning Post 10 2026 install folder.\nThe installation may not have completed correctly.',
0x16b420:'Winning Post 10 2026 is not installed.\nInsert DISC 1 of Winning Post 10 2026 and install it.',
0x16b4a8:'The Winning Post 10 2026 disc was not found.\nInsert DISC 1 and click "DirectX Install" again.',
0x16b548:'The installation did not complete correctly.\nInsert DISC 1 and click "DirectX Install" again.',
0x16b5d0:'Please insert DISC 1.',
0x16b5f0:'Cannot install from the launcher.\nInsert DISC 1 of Winning Post 10 2026 and install via AutoRun.exe.',
0x16b810:'Win32 error: %d\n',0x16b824:'Win32 error: %d\n%s',0x16b8b0:'Screen resolution is too small.'}
for off,t in S.items():
    n=d.index(b'\x00',off)-off;b=t.encode('ascii')
    assert len(b)<=n,(hex(off),len(b),n)
    d[off:off+n]=b+b'\x00'*(n-len(b))
open(dst,'wb').write(d);print('bitmaps',done,'strings',len(S))
