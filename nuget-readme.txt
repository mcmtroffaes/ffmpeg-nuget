This nuget package contains headers, import libraries, and runtime
dlls for FFmpeg for use with Visual Studio. It is based on the
official FFmpeg windows builds from https://ffmpeg.zeranoe.com/builds/

IMPORTANT NOTICE: I am planning to retire this nuget package from
October 1st 2020 onward, since zeranoe is closing and will no longer
be providing any builds. Visual Studio has nowadays excellent
integration with vcpkg. Pre-built vcpkg archives are available from

https://github.com/mcmtroffaes/ffmpeg-msvc-build/releases

or simply build ffmpeg yourself using vcpkg.

FFmpeg is a pure C project, so to use the libraries within your C++
application you must encompass your FFmpeg includes using extern "C".
Otherwise, you will experience link errors. For more details, see
https://ffmpeg.org/faq.html

Note that this build incorporates parts that are covered by the GPLv3
license. Consequently, if you use this nuget package in your
application, then you must comply with the terms of the GPLv3 license.

In the build\native\share\doc folder of this nuget package, you can find:

* The readme included with the official windows build for details
  about how FFmpeg was compiled and what features are enabled
  (ffmpeg-windows-build-readme.txt).

* A copy of the GPLv3 license which applies to this build
  (ffmpeg-windows-build-license.txt).

For more information on FFmpeg's license, see:

* https://git.ffmpeg.org/gitweb/ffmpeg.git/blob/4a11a6f:/LICENSE.md

* https://ffmpeg.org/legal.html
