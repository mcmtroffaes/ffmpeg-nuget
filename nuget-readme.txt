This nuget package contains headers, import libraries, and runtime
dlls for FFmpeg, based on the official FFmpeg windows builds from
https://ffmpeg.zeranoe.com/builds/ for use with Visual Studio.

FFmpeg is a pure C project, so to use the libraries within your C++
application you need to encompass your FFmpeg includes using extern
"C". For more details, see https://ffmpeg.org/faq.html

Note that the official windows FFmpeg build incorporates parts that
are covered by the GPLv3 license. Consequently, if you use this nuget
package in your application, then you must comply with the terms of
the GPLv3 license.

In the content/licenses folder of this nuget package, you can find:

* The readme included with the official windows build for details
  about how FFmpeg was compiled and what features are enabled
  (ffmpeg-windows-build-readme.txt).

* A copy of the GPLv3 license (ffmpeg-windows-build-license.txt) which
  applies to this build.

* A copy of the license of each of the libraries used in the build
  (<library>.txt).

For more information on FFmpeg's license, see:

* https://git.ffmpeg.org/gitweb/ffmpeg.git/blob/a75ef15:/LICENSE.md

* https://ffmpeg.org/legal.html
