import json,subprocess,os,sys
H=os.path.expanduser('~/work/');S=json.load(open(H+'capsegs.json'))
T={}
for f in sorted(os.listdir(H)):
    if f.startswith('subs_') and f.endswith('.json'): T.update(json.load(open(H+f)))
def ts(t): return f"{int(t//3600)}:{int(t%3600//60):02d}:{t%60:05.2f}"
os.makedirs(H+'MOVIE_EN',exist_ok=True)
for n in sys.argv[1:]:
    tr=T[n];seg=S[n];dur=float(subprocess.run(['ffprobe','-v','error','-show_entries','format=duration','-of','csv=p=0',H+'MOVIE/'+n],capture_output=True,text=True).stdout)
    a=["[Script Info]","ScriptType: v4.00+","PlayResX: 1280","PlayResY: 720","WrapStyle: 0","","[V4+ Styles]",
    "Format: Name, Fontname, Fontsize, PrimaryColour, SecondaryColour, OutlineColour, BackColour, Bold, Italic, Underline, StrikeOut, ScaleX, ScaleY, Spacing, Angle, BorderStyle, Outline, Shadow, Alignment, MarginL, MarginR, MarginV, Encoding",
    "Style: Hdr,DejaVu Serif,40,&H0000E6FF,&H0,&H00000000,&H0,1,0,0,0,100,100,0,0,1,1,0,8,90,90,22,1",
    "Style: Cap,DejaVu Sans,30,&H00F0F0F0,&H0,&H00000000,&H0,0,1,0,0,100,100,0,0,1,1,0,2,100,100,10,1",
    "","[Events]","Format: Layer, Start, End, Style, Name, MarginL, MarginR, MarginV, Effect, Text",
    f"Dialogue: 0,{ts(0)},{ts(dur)},Hdr,,0,0,0,,{tr[0]}"]
    for (s,e),t in zip(seg,tr[1:]): a.append(f"Dialogue: 0,{ts(s)},{ts(e)},Cap,,0,0,0,,{t}")
    open(H+'MOVIE_EN/'+n+'.ass','w').write('\n'.join(a))
    vf=f"drawbox=x=80:y=0:w=1120:h=86:color=black:t=fill,drawbox=x=80:y=636:w=1120:h=84:color=black:t=fill,ass={H}MOVIE_EN/{n}.ass"
    r=subprocess.run(['ffmpeg','-v','error','-y','-i',H+'MOVIE/'+n,'-vf',vf,'-c:v','libx264','-preset','veryfast','-crf','18','-c:a','copy','-movflags','+faststart',H+'MOVIE_EN/'+n])
    print(n,r.returncode)
