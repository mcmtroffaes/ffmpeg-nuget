$ffmpeg = "ffmpeg-20170321-db7a05d"
$dev32 = "$ffmpeg-win32-dev"
$dev64 = "$ffmpeg-win64-dev"
$shared32 = "$ffmpeg-win32-shared"
$shared64 = "$ffmpeg-win64-shared"

Start-FileDownload "https://ffmpeg.zeranoe.com/builds/win32/dev/$dev32.zip"
Start-FileDownload "https://ffmpeg.zeranoe.com/builds/win64/dev/$dev64.zip"
Start-FileDownload "https://ffmpeg.zeranoe.com/builds/win32/shared/$shared32.zip"
Start-FileDownload "https://ffmpeg.zeranoe.com/builds/win64/shared/$shared64.zip"

Expand-Archive "$dev32.zip" -DestinationPath .
Expand-Archive "$dev64.zip" -DestinationPath .
Expand-Archive "$shared32.zip" -DestinationPath .
Expand-Archive "$shared64.zip" -DestinationPath .

Copy-Item "$dev32\doc\examples\*.c" examples

# unistd.h -> io.h (for MSVC)
$cfiles = Get-ChildItem -Path examples\ -Filter *.c
foreach ($file in $cfiles)
{
  (Get-Content $file.PSPath) |
  Foreach-Object { $_ -replace "unistd.h", "io.h" } |
    Set-Content $file.PSPath
}
