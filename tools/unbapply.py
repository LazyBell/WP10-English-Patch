import sys,os,json,glob
sys.path.insert(0,os.path.expanduser('~/tools'))
from unbmod import build,relocate
import racebuild
P=[]
for f in sorted(glob.glob(os.path.expanduser('~/work/unb_patches_*.json'))):
    P+=[(i,a,bytes.fromhex(h)) for i,a,h in json.load(open(f))]
print(build(P))
print(relocate(racebuild.go()))
