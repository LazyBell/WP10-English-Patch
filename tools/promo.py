import subprocess,os,sys
H=os.path.expanduser('~/work/')
D={'m101.mp4':[(25,30,"Debut season at Oi: six races, six wins"),(30,33,"56 lengths in total"),(50,55.5,"Yayoi Sho - 1st   |   Spring Stakes - 1st"),(57,62,"Satsuki Sho"),(112,128,"The rough warrior from the local tracks... became the nation's idol horse")],
'm102.mp4':[(22,27,"The Grey Monster"),(44.5,48,"The last hero of the Showa era"),(52,55,"The Heisei Big Three"),(62,65,"Arima Kinen"),(121,128,"He's here! He's won! Oguri!")]}
def ts(t): return f"0:{int(t//60):02d}:{t%60:05.2f}"
for n,ev in D.items():
    a=["[Script Info]","ScriptType: v4.00+","PlayResX: 1280","PlayResY: 720","","[V4+ Styles]",
    "Format: Name, Fontname, Fontsize, PrimaryColour, SecondaryColour, OutlineColour, BackColour, Bold, Italic, Underline, StrikeOut, ScaleX, ScaleY, Spacing, Angle, BorderStyle, Outline, Shadow, Alignment, MarginL, MarginR, MarginV, Encoding",
    "Style: S,DejaVu Sans,26,&H00FFFFFF,&H0,&H70000000,&H70000000,1,0,0,0,100,100,0,0,3,4,0,2,20,20,4,1","","[Events]","Format: Layer, Start, End, Style, Name, MarginL, MarginR, MarginV, Effect, Text"]
    for s,e,t in ev: a.append(f"Dialogue: 0,{ts(s)},{ts(e)},S,,0,0,0,{{\\fad(250,250)}},{t}".replace(',{\\fad(250,250)},',',,{\\fad(250,250)}'))
    open(H+'MOVIE_EN/'+n+'.ass','w').write('\n'.join(a))
    r=subprocess.run(['ffmpeg','-v','error','-y','-i',H+'MOVIE/'+n,'-vf',f"ass={H}MOVIE_EN/{n}.ass",'-c:v','libx264','-preset','veryfast','-crf','18','-c:a','copy','-movflags','+faststart',H+'MOVIE_EN/'+n])
    print(n,r.returncode)
