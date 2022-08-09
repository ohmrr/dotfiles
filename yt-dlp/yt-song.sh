#!/bin/sh

if [ -z "$1" ]
then
  echo "No YouTube URL entered. Please try again."
else
  cd ~/Desktop && yt-dlp "$1" -x --audio-format mp3 --audio-quality 320k --embed-thumbnail --add-metadata
fi