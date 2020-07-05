#!/bin/bash

for file in "$1"*.mp4; do
    echo "$file"
    #ffmpeg -i "$file" -c:v mpeg4 -q:v 5 -tag:v DIVX -s 640x480 -c:a libmp3lame -q:a 5 -ac 2 -ar 44100 "$1$(basename "$file" .mp4)".avi  
    #ffmpeg -i "$file" -sn -c:a libmp3lame -ar 48000 -ab 128k -ac 2 -c:v libxvid -crf 24 -vtag DIVX -vf scale=640:480 -aspect 4:3 -mbd rd -flags +mv4+aic -trellis 2 -cmp 2 -subcmp 2 -g 30 -vb 1500k "$1$(basename "$file" .mp4)".avi
    ffmpeg -i "$file" -c:v mpeg4 -q:v 5 -tag:v DIVX -vf scale=640:480   -c:a libmp3lame -q:a 5 -ac 2 -ar 44100 "$1$(basename "$file" .mp4)".avi  

done
