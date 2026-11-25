#!/bin/bash
# burn English subtitles into PC webm videos (from JP originals in backup); m2xx also get black bars over JP captions
G="$HOME/mnt/Winning post 10 pc/Winning Post 10 2026/JP_original_backup/MOVIE"; O=~/work/pc/mov; S=~/work/MOVIE_EN; start=$(date +%s); budget=${1:-60}
for a in $S/m2*.ass; do n=$(basename $a .mp4.ass); [ -e $O/$n.webm ] && continue
  dur=$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$G/$n.webm"); need=$(python3 -c "print(int($dur*0.85)+5)")
  el=$(( $(date +%s)-start )); [ $((el+need)) -gt $budget ] && [ $el -gt 0 ] && break
  cp $a /tmp/s.ass
  ffmpeg -v error -y -i "$G/$n.webm" -vf "drawbox=x=120:y=0:w=1680:h=129:color=black:t=fill,drawbox=x=120:y=954:w=1680:h=126:color=black:t=fill,ass=/tmp/s.ass" -c:v libvpx-vp9 -deadline realtime -cpu-used 7 -row-mt 1 -threads 2 -b:v 10M -c:a copy /tmp/enc.webm && mv /tmp/enc.webm $O/$n.webm && echo "done $n $(( $(date +%s)-start ))s"
done
echo "have $(ls $O/m2*.webm 2>/dev/null | wc -l)/21"
