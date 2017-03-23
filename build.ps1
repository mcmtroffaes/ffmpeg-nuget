$ffmpeg = "ffmpeg-20170321-db7a05d"
$dev32 = "$ffmpeg-win32-dev.zip"
$dev64 = "$ffmpeg-win64-dev.zip"
$shared32 = "$ffmpeg-win32-shared.zip"
$shared64 = "$ffmpeg-win64-shared.zip"

$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://ffmpeg.zeranoe.com/builds/win32/dev/$dev32", "$dev32")
$WebClient.DownloadFile("https://ffmpeg.zeranoe.com/builds/win64/dev/$dev64", "$dev64")
$WebClient.DownloadFile("https://ffmpeg.zeranoe.com/builds/win32/shared/$shared32", "$shared32")
$WebClient.DownloadFile("https://ffmpeg.zeranoe.com/builds/win64/shared/$shared64", "$shared64")

Expand-Archive "$dev32" -DestinationPath .
Expand-Archive "$dev64" -DestinationPath .
Expand-Archive "$shared32" -DestinationPath .
Expand-Archive "$shared64" -DestinationPath .
