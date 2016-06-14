set BUILD_ROOT=c:\Qt5.5.0\

REM Set up \Microsoft Visual Studio 2013, where <arch> is \c amd64, \c x86, etc.
CALL "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86_amd64

REM set compiler to multicore
set CL=/MP

REM Add ICU dirs to the proper path (include, libs , bin)
set INCLUDE=%INCLUDE%;%BUILD_ROOT%\icu\include
set LIB=%LIB%;%BUILD_ROOT%\icu\lib
set PATH=%PATH%;%BUILD_ROOT%\icu\bin


REM Add OpenSSL dirs to the proper path (include, libs , bin)
set INCLUDE=%INCLUDE%;%BUILD_ROOT%\openssl\build\include
set LIB=%LIB%;%BUILD_ROOT%\openssl\build\lib
set PATH=%PATH%;%BUILD_ROOT%\openssl\build\bin

REM Add Pyhton dirs to the proper path (include, libs , bin)
set PATH=%PATH%;c:\Python27\


REM Add GunWindirs to the proper path (include, libs , bin)
set INCLUDE=%INCLUDE%;%BUILD_ROOT%\GnuWin32\include
set LIB=%LIB%;%BUILD_ROOT%\GnuWin32\lib
set PATH=%PATH%;=%BUILD_ROOT%\GnuWin32\bin


SET QT_ROOT=%BUILD_ROOT%\qt5
SET PATH=%QT_ROOT%\qtbase\bin;%PATH%
SET QMAKESPEC=win32-msvc2013

cd %QT_ROOT%

CALL configure -prefix %QT_ROOT%\build -icu -opengl dynamic -release -nomake examples -opensource -confirm-license  -qt-libpng -qt-libjpeg -openssl -qt-pcre -no-cups -no-dbus -skip qtwebkit -skip qtconnectivity -skip qtdoc -skip qtgraphicaleffects -skip qtsensors -skip qtserialport -skip qtwebkit-examples -skip qtquick1 -skip qt3d

nmake
nmake install
cd ..
