#/bin/bash

IFS=$'\n'

f=$1
basef=$(basename "$f")


if [ -z "$1" ]; then
	echo "
	First variable not set. Please enter input files in the following order:
	1. Input video - stream 1
	2. Input audio - stream 2
	3. Destination format - mp4, mov, flv, etc
	4. Destination folder
	"

else

ffmpeg -i $f -i $2 -c:v copy -map 0:0 -map 1:0 -c:a copy $4/$basef-audio.$3

fi