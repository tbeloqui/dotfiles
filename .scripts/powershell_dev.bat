@call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvarsall.bat" x64

set BOOST_ROOT=C:\local\boost_1_69_0
set BOOST_INCLUDEDIR=C:\local\boost_1_69_0
set BOOST_LIBRARYDIR=C:\local\boost_1_69_0\lib64-msvc-14.1
set PKG_CONFIG_PATH=C:\gstreamer\1.0\x86_64\lib\pkgconfig
set GSTREAMER_1_0_ROOT_X86_64=C:\gstreamer\1.0\x86_64\
set PATH=C:\gstreamer\1.0\x86_64\bin;%PATH%

@start powershell -noexit
