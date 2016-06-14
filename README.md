# Qt5WinWebEngineBuilds

[![Appveyor Build Status](https://ci.appveyor.com/api/projects/status/github/jd-boyd/Qt5WinWebEngineBuilds?svg=true)](https://ci.appveyor.com/project/jd-boyd/Qt5WinWebEngineBuilds/branch/master)

Customized builds of Qt5 with WebEngine for Windows

ICU is commented out, see
http://doc.qt.io/qt-5/windows-requirements.html for explanation of
reprocussions of that.  The benefit is that is makes the build
significantly smaller.

gperf is required for ANGLE, which is required for best support OOB,
but gperf isn't in msys, so install seperately.

-opengl dynamic means that it will try to pick the best option of the
users computer, either real OpenGL if up to date version available, or
ANGLE otherwise.

