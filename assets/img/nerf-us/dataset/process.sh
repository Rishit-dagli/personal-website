#!/bin/bash

TARGET_BITRATE="1700k"

for i in {0..6}
do
  inputFile="converted_${i}.mp4"
  outputFile="temp_${inputFile}"

  echo "Processing $inputFile..."

  ffmpeg -i "$inputFile" -vcodec h264 -acodec aac -b:v $TARGET_BITRATE -strict -2 "$outputFile"

  if [ $? -eq 0 ]; then
    mv "$outputFile" "$inputFile"
    echo "$inputFile has been successfully converted to a browser-compatible format and overwritten."
  else
    echo "An error occurred while converting $inputFile."
  fi
done

echo "All files have been processed."
