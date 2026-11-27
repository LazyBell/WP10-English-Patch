#!/bin/sh
# dis.sh <rva hex> [before] [after]  -> objdump of 1.0.4 decrypted exe
A=$(($1)); B=${2:-64}; N=${3:-128}
python3 -c "
d=open('$HOME/work/v104/wp10_104_dec.exe','rb').read();a=$A-$B;open('/tmp/_d.bin','wb').write(d[a-0xc00:a-0xc00+$B+$N])"
objdump -D -b binary -m i386:x86-64 --adjust-vma=$(printf '0x%x' $((A-B))) /tmp/_d.bin | sed -n '8,$p' | grep -v "int3" | sed 's/^ *//' | awk -F'\t' '{print $1 $3}'
