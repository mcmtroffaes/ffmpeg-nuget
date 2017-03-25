& .\decoding_encoding.exe h264 >$null
if (!(Test-Path "test.h264")) { $host.SetShouldExit(1) }
& .\decoding_encoding.exe mp2 >$null
if (!(Test-Path "test.mp2")) { $host.SetShouldExit(1) }

$formats = @("flac","wav","aac","ogg","mp4","mkv","flv","mov","avi","h264","h265")
foreach ($format in $formats) {
  $outfile = "test-muxing.$format"
  & .\muxing.exe $outfile >$null
  if (!(Test-Path $outfile)) { $host.SetShouldExit(1) }
}
