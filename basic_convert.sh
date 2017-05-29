#/bin/bash

IFS=$'\n'

f=$1
basef=$(basename "$f")


if [ -z "$1" ]; then
	echo "
	First variable not set. Please enter input files in the following order:
	1. Input video
	2. Video Codec
	3. Video Bitrate
	4. Audio Codec
	5. Audio Bitrate
	6. Destination format
	7. Destination folder
	"

else

ffmpeg -i $f -c:v $2 -b:v $3 -c:a $4 -b:a $5 -f $6 $7/$basef-audio.$6

fi