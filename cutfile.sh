#!/bin/sh

ffmpeg  -i ch10_20140922110330.mp4 -acodec copy -vcodec copy -ss 00:58:00 -t 90 -f mpeg out/output1
ffmpeg  -i ch10_20140922110330.mp4 -acodec copy -vcodec copy -ss 01:34:00 -t 240 -f mpeg out/output2
ffmpeg  -i ch10_20140922154508.mp4 -acodec copy -vcodec copy -ss 00:07:00 -t 120 -f mpeg out/output3
ffmpeg  -i ch10_20140922154508.mp4 -acodec copy -vcodec copy -ss 01:49:00 -t 150 -f mpeg out/output4


cat out/output* > out/final.mpeg

ffmpeg -i out/final.mpeg -f mp4 out/final.mp4