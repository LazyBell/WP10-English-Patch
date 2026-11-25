import json,subprocess,os,sys
from PIL import Image,ImageDraw
S=json.load(open(os.path.expanduser('~/work/capsegs.json')))
def grab(f,t,box):
    x,y,w,h=box
    d=subprocess.run(['ffmpeg','-v','error','-ss',str(t),'-i',f,'-frames:v','1','-vf',f'crop={w}:{h}:{x}:{y}','-f','rawvideo','-pix_fmt','rgb24','-'],capture_output=True).stdout
    return Image.frombytes('RGB',(w,h),d)
for grp in sys.argv[1:]:
    names=grp.split(',');rows=[]
    for n in names:
        f=os.path.expanduser('~/work/MOVIE/'+n)
        rows.append((n+' HDR',grab(f,2.0,(120,28,1040,40))))
        for i,(s,e) in enumerate(S[n]):
            rows.append((f'{n[:4]}#{i}',grab(f,(s+e)/2,(120,656,1040,48))))
    W=820;H=sum(r[1].height*2 for r in rows)
    im=Image.new('RGB',(W*2//1,H),'black');y=0;dr=ImageDraw.Draw(im)
    im=Image.new('RGB',(160+1040*2,H),'black');dr=ImageDraw.Draw(im)
    for lab,c in rows:
        im.paste(c.resize((c.width*2,c.height*2)),(160,y));dr.text((5,y+10),lab,fill='yellow');y+=c.height*2
    im.save(os.path.expanduser(f'~/mnt/Winning Post 10/frames/cap_{names[0][:4]}.png'))
    print(names[0],im.size)
