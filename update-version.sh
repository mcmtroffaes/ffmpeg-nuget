#!/bin/bash

if [ -z "$1" ]
  then
    echo "Please supply a new version (YYYYMMDD-HASH)"
    exit 1
fi

OLD_VERSION=`sed -n 's|[$]ffmpeg = "ffmpeg-\(.*\)"|\1|p' install.ps1`
OLD_NUGET_VERSION=`sed -n 's|\s*<version>\(.*\)</version>|\1|p' FFmpeg.Nightly.nuspec`

NEW_VERSION=$1
NEW_NUGET_VERSION=${NEW_VERSION:0:8}.0.0

echo "$OLD_VERSION -> $NEW_VERSION"
echo "$OLD_NUGET_VERSION -> $NEW_NUGET_VERSION"

find . -type f -exec sed -i "s/$OLD_VERSION/$NEW_VERSION/g" {} \;
find . -type f -exec sed -i "s/$OLD_NUGET_VERSION/$NEW_NUGET_VERSION/g" {} \;
