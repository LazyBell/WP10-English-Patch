#!/bin/sh
# Builds dinput8.dll (the horse-name add-on) with clang + lld-link (no Windows SDK needed).
set -e
llvm-dlltool -m i386:x86-64 -d k32.def -l k32.lib
llvm-dlltool -m i386:x86-64 -d u32.def -l u32.lib
clang --target=x86_64-pc-windows-msvc -O2 -ffreestanding -fno-builtin -fno-stack-protector -c dinput8_addon.c -o dinput8_addon.o
lld-link /dll /nodefaultlib /entry:DllMain /out:dinput8.dll dinput8_addon.o k32.lib u32.lib
# 1.0.4 version (rename the output to dinput8.dll when installing on game version 1.0.4)
clang --target=x86_64-pc-windows-msvc -O2 -ffreestanding -fno-builtin -fno-stack-protector -c dinput8_addon_v104.c -o dinput8_addon_v104.o
lld-link /dll /nodefaultlib /entry:DllMain /out:dinput8_v104.dll dinput8_addon_v104.o k32.lib u32.lib
