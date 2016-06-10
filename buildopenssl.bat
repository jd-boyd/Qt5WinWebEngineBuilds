set BUILD_ROOT=C:\qt

CALL "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86_amd64

cd openssl
set CL=/MP
perl Configure VC-WIN64A --prefix=%BUILD_ROOT%\openssl\build
call ms\do_win64a
nmake -f ms\ntdll.mak
nmake -f ms\ntdll.mak install
cd ..
