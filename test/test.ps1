$formats = @("flac","wav","aac","ogg","mp4","mkv","flv","mov","avi","h264","h265")
foreach ($format in $formats) {
  $outfile = "test-muxing.$format"
  Echo "begin test: muxing to $outfile..."
  # muxing.exe writes to stderr, which powershell considers as a failure
  # so embed in try catch to fix this
  Try
  {
    & .\muxing.exe $outfile 2>&1 | out-null
  }
  Catch
  {
  }
  Echo "end test: muxing to $outfile..."
  if (!(Test-Path $outfile)) { $host.SetShouldExit(1) }
}
