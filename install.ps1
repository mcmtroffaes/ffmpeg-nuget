$ffmpeg = "ffmpeg-20181018-f72b990"
$dev32 = "$ffmpeg-win32-dev"
$dev64 = "$ffmpeg-win64-dev"
$shared32 = "$ffmpeg-win32-shared"
$shared64 = "$ffmpeg-win64-shared"

if (!(Test-Path "$dev32.zip")) { Start-FileDownload "http://ffmpeg.zeranoe.com/builds/win32/dev/$dev32.zip" }
if (!(Test-Path "$dev64.zip")) { Start-FileDownload "http://ffmpeg.zeranoe.com/builds/win64/dev/$dev64.zip" }
if (!(Test-Path "$shared32.zip")) { Start-FileDownload "http://ffmpeg.zeranoe.com/builds/win32/shared/$shared32.zip" }
if (!(Test-Path "$shared64.zip")) { Start-FileDownload "http://ffmpeg.zeranoe.com/builds/win64/shared/$shared64.zip" }

if (!(Test-Path $dev32)) { Expand-Archive "$dev32.zip" -DestinationPath . }
if (!(Test-Path $dev64)) { Expand-Archive "$dev64.zip" -DestinationPath . }
if (!(Test-Path $shared32)) { Expand-Archive "$shared32.zip" -DestinationPath . }
if (!(Test-Path $shared64)) { Expand-Archive "$shared64.zip" -DestinationPath . }

Copy-Item "$dev32\examples\*.c" examples

# unistd.h -> io.h (for MSVC)
$cfiles = Get-ChildItem -Path examples\ -Filter *.c
foreach ($file in $cfiles)
{
  (Get-Content $file.PSPath) |
  Foreach-Object { $_ -replace "unistd.h", "io.h" } |
    Set-Content $file.PSPath
}
