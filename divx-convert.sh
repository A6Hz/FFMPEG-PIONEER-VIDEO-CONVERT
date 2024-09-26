#!/bin/bash

# divx-convert.sh <Path_folder> 
for file in "$1"*.mp4; do
    echo "$file"
    ffmpeg -i "$file" -c:v mpeg4 -q:v 5 -tag:v DIVX -c:a libmp3lame -q:a 5 -ac 2 -ar 44100 -aspect 4:3 -vf "scale=640:-2" "$1$(basename "$file" .mp4)".avi  
done
