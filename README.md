# ffmpeg-nuget

A nuget package for FFmpeg based on the [official builds](https://ffmpeg.zeranoe.com/builds/).

[![Build status](https://ci.appveyor.com/api/projects/status/vcsn0fpr5s1j6p2y/branch/master?svg=true)](https://ci.appveyor.com/project/mcmtroffaes/ffmpeg-nuget/branch/master)

## Requirements

* [Nuget](https://www.nuget.org/)

## Usage

  * Use ``install.ps1`` to download and extract the relevant FFmpeg dev and shared builds for both 32 bit and 64 bit.
  * Use ``build.ps1`` to regenerate the lib files using Visual Studio 14.0 tools.
  * Use ``nuget pack FFmpeg.Nightly.nuspec`` to create the nuget package.

## License

All scripts for creating this nuget package are licensed under the
conditions of the [MIT license](LICENSE.txt). For the examples in the
[test](test) folder, see individual files for license details.

For license details of FFmpeg itself, see [FFmpeg's license
page](https://ffmpeg.org/legal.html). Note that the official windows
FFmpeg build incorporates parts that are covered by the GPLv3, so the
GPL applies to the entire build. In other words, if you use this nuget
package in your application, then you must comply with the GPLv3.
