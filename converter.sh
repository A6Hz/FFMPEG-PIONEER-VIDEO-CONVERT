#!/bin/bash
# CONVERTIR DE VIDEOS A DIVX PIONEER
#
ffmpeg -i "$PWD/$1" -sn -c:a libmp3lame -ar 48000 -ab 128k -ac 2 -c:v libxvid -crf 24 -vtag DIVX -vf scale=640:480 -aspect 4:3 -mbd rd -flags +mv4+aic -trellis 2 -cmp 2 -subcmp 2 -g 30 -vb 1500k $2
