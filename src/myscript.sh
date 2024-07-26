#!/bin/sh

while getopts ":i:vs" opt; do
  case $opt in
    i) inputFile="$OPTARG"
    ;;
    v) isVertical=true
    ;;
    s) startPosition="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    exit 1
    ;;
  esac

  case $OPTARG in
    -*) echo "Option $opt needs a valid argument"
    exit 1
    ;;
  esac
done
if [ -z "$isVertical" ]; then isVertical=false; fi
if [ -z "$startPosition" ]; then startPosition="00:00:00.500"; fi

# used for bash 
#IFS='.'
#read -a filePart <<< "$inputFile"
#outputFile="${filePart[0]}.gif"

# used for dash 
filename=$(echo "$inputFile" | cut -d "." -f 1)
outputFile="$filename.gif"

echo "------------------------"
echo "InputFile: $inputFile"
echo "outputFile: $outputFile"
echo "Is Vertical: $isVertical"
echo "Start Position: $startPosition"
echo "========================"

if $isVertical
then
  ffmpeg -r 60 -i $inputFile -loop 0 -vf scale=-1:320 -c:v gif -f gif -ss $startPosition -r 10 -t 5 - > $outputFile
else
  ffmpeg -r 60 -i $inputFile -loop 0 -vf scale=320:-1 -c:v gif -f gif -ss $startPosition -r 10 -t 5 - > $outputFile
fi
