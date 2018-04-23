$formats = @("flac","wav","aac","ogg","mp4","mkv","flv","mov","avi","h264","h265")
foreach ($format in $formats) {
  $outfile = "test-muxing.$format"
  Echo "begin test: muxing to $outfile..."
  & .\muxing.exe $outfile >$null 2>&1
  Echo "end test: muxing to $outfile..."
  if (!(Test-Path $outfile)) { $host.SetShouldExit(1) }
}
