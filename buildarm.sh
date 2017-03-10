#!/bin/bash
dir=$(date +%d.%m.%Y)
mkdir $dir
cd $dir
nano code.pas
gpg --output code.pas.sig --sign code.pas
gpg --output code.pas.sig --verify code.pas
echo COMPILE
fpc code.pas
rm code.o
rm linuxarm
mv code linuxarm
echo THE END
