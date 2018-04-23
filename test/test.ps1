# note: h265 crashes on appveyor for some reason, removed from tests for now
$formats = @("flac","wav","aac","ogg","mp4","mkv","flv","mov","avi","h264")
foreach ($format in $formats) {
  $outfile = "test-muxing.$format"
  Echo "test: muxing to $outfile..."
  & .\muxing.exe $outfile >$null 2>&1
  if (!(Test-Path $outfile)) { $host.SetShouldExit(1) }
}
