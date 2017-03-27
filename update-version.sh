#!/bin/bash

OLD_VERSION=`sed -n 's|[$]ffmpeg = "ffmpeg-\(.*\)"|\1|p' install.ps1`
OLD_NUGET_VERSION=`sed -n 's|\s*<version>\(.*\)</version>|\1|p' FFmpeg.Nightly.nuspec`

NEW_VERSION=`curl https://ffmpeg.zeranoe.com/builds/ | grep -Po 'ffmpeg-\K[0-9]+-[a-z0-9]+' | head -n 1`
NEW_NUGET_VERSION=${NEW_VERSION:0:8}.0.0

if [ "$OLD_VERSION" == "$NEW_VERSION" ]
then
  echo "Already up to date."
  exit 0
fi

echo "$OLD_VERSION -> $NEW_VERSION"
echo "$OLD_NUGET_VERSION -> $NEW_NUGET_VERSION"

find . -type f -exec sed -i "s/$OLD_VERSION/$NEW_VERSION/g" {} \;
find . -type f -exec sed -i "s/$OLD_NUGET_VERSION/$NEW_NUGET_VERSION/g" {} \;

git commit -a -m "Update ffmpeg version to $NEW_VERSION."
echo "To tag, run:"
echo "    git tag -a -m \"Tagging version $NEW_NUGET_VERSION\"" $NEW_NUGET_VERSION
