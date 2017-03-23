$ffmpeg = "ffmpeg-20170321-db7a05d"
$dev32 = "$ffmpeg-win32-dev.zip"
$dev64 = "$ffmpeg-win64-dev.zip"
$shared32 = "$ffmpeg-win32-shared.zip"
$shared64 = "$ffmpeg-win64-shared.zip"

Start-FileDownload "https://ffmpeg.zeranoe.com/builds/win32/dev/$dev32"
Start-FileDownload "https://ffmpeg.zeranoe.com/builds/win64/dev/$dev64"
Start-FileDownload "https://ffmpeg.zeranoe.com/builds/win32/shared/$shared32"
Start-FileDownload "https://ffmpeg.zeranoe.com/builds/win64/shared/$shared64"

Expand-Archive "$dev32" -DestinationPath .
Expand-Archive "$dev64" -DestinationPath .
Expand-Archive "$shared32" -DestinationPath .
Expand-Archive "$shared64" -DestinationPath .
