Echo "test: decoding/encoding to test.h264..."
& .\decoding_encoding.exe h264 >$null 2>&1
if (!(Test-Path "test.h264")) { $host.SetShouldExit(1) }
Echo "test: decoding/encoding to test.mp2..."
& .\decoding_encoding.exe mp2 >$null 2>&1
if (!(Test-Path "test.mp2")) { $host.SetShouldExit(1) }

$formats = @("flac","wav","aac","ogg","mp4","mkv","flv","mov","avi","h264","h265")
foreach ($format in $formats) {
  $outfile = "test-muxing.$format"
  Echo "test: muxing to $outfile..."
  & .\muxing.exe $outfile >$null 2>&1
  if (!(Test-Path $outfile)) { $host.SetShouldExit(1) }
}
