#!/bin/bash
dir=$(date +%d.%m.%Y)
cd $dir
nano code.pas
gpg --output code.pas.sig --sign code.pas
gpg --output code.pas.sig --verify code.pas
echo COMPILE
fpc code.pas
rm code.o
rm linux
mv code linux
wine ~/.wine/drive_c/FPC/3.0.0/bin/i386-win32/fpc.exe Z:/home/gravit/code/pascalprojects/$dir/code.pas
rm code.o
echo THE END
