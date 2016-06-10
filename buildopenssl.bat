set BUILD_ROOT=c:\Qt5.5.0\

CALL "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" amd64_x86

cd openssl-1.0.2h
set CL=/MP
perl Configure VC-WIN32 no-asm --prefix=%BUILD_ROOT%\openssl\build
call ms\do_nasm
nmake -f ms\ntdll.mak
nmake -f ms\ntdll.mak install
cd ..
