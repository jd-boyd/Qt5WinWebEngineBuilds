set BUILD_ROOT=c:\Qt5.5.0\

REM Set up \Microsoft Visual Studio 2013, where <arch> is \c amd64, \c x86, etc.
CALL "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86_amd64

REM set compiler to multicore
set CL=/MP

REM Build icu
cd %BUILD_ROOT%\icu
msbuild source\allinone\allinone.sln /m /target:Build /property:Configuration=Release;Platform=Win32
msbuild source\allinone\allinone.sln /m /target:Build /property:Configuration=Debug;Platform=Win32
cd ..
