set -e
cd ~/launcher
clang --target=i686-pc-windows-msvc -O2 -ffreestanding -fno-builtin -fno-stack-protector -fno-exceptions -c msimg32_en.c -o msimg32_en.o 2>&1 | grep -E "error" || true
lld-link /dll /nodefaultlib /entry:DllMain /machine:x86 /safeseh:no /out:msimg32.dll msimg32_en.o res.res k32x86.lib u32x86.lib /export:AlphaBlend /export:GradientFill /export:TransparentBlt /export:vSetDdrawflag /export:DllInitialize
cp msimg32.dll /mnt/user-data/outputs/msimg32_$1.dll; md5sum /mnt/user-data/outputs/msimg32_$1.dll
