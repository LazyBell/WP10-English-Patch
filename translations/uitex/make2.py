import numpy as np,sys
from PIL import Image
sys.path.insert(0,'.')
from edit import *
from badges import radial_fix
exec(open('make.py').read().split('# 大成功')[0])
t0=Image.open('t0_orig.png').convert('RGBA')
B=[('FORMED!',1342.5,1115,73),('BOOST!',1505,1115,73),('RANK UP!',1906,1272,80)]
for txt,cx,cy,R in B:
    t0=radial_fix(t0,cx,cy,R,0.42)
    t0.alpha_composite(text_layer(t0.size,txt,(int(cx-R*1.15),int(cy-R*0.33),int(cx+R*1.15),int(cy+R*0.33)),SANS,(255,255,255,255),stroke=5,stroke_fill=(30,110,200,255),italic=0.15))
crop=t0.crop((1250,1020,2020,1370));bg=Image.new('RGBA',crop.size,(110,110,110,255));bg.alpha_composite(crop);bg.convert('RGB').save('/tmp/b.png')
import os;bg.convert('RGB').save(os.path.expanduser('~/mnt/Desktop/WINNING POST 10 TRANSLATION/_work_tpl/badges_v.png'))
