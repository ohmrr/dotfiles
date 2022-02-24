#!/bin/sh

if [ -z "$1" ]
then
  echo "Invalid URL"
else
  cd ~/Desktop && yt-dlp "$1" -x --audio-format mp3 --audio-quality 320k --embed-thumbnail --add-metadata
fi