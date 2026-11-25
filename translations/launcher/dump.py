import struct,sys
sys.path.insert(0,'.')
from PIL import Image
import rsrc
d=rsrc.d
for p,f,s,e in rsrc.out:
    if p[0]!=2:continue
    w,h,pl,bpp,comp=struct.unpack_from('<iiHHI',d,f+4)
    print(p[1],w,h,bpp,comp,s)
    hdr=struct.unpack_from('<I',d,f)[0]
    stride=((w*bpp+31)//32)*4
    pix=d[f+hdr:f+hdr+stride*abs(h)]
    mode={24:'BGR',32:'BGRA'}[bpp]
    im=Image.frombuffer('RGBA' if bpp==32 else 'RGB',(w,abs(h)),pix,'raw',mode,stride,-1 if h>0 else 1)
    im.save(f'png/{p[1]}.png')
