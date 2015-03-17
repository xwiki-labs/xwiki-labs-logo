#!/usr/bin/env bash
convert \
	-size 512x512 \
	xc:none \
	-gravity Center \
	-font LMSans10-Bold \
	-pointsize 200 \
	-weight Bolder \
	-draw 'text 0,0 "UCF"' \
	logoUCF.png
