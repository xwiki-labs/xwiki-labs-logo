#!/usr/bin/env bash
convert \
	-size 1200x400 \
	xc:white \
	\( \
		cryptofist.png \
		-crop 600x600+10+0! \
		-filter Mitchell \
		-resize 400x400 \
	\) \
	-gravity West \
	-geometry 400x400+0x0! \
	-composite \
	\( \
		\( \
			and_so_it_begins.png \
			-filter Mitchell \
			-resize 477x400 \
		\) \
		\( \
			-size 477x400 \
			xc:white \
		\) \
		\( \
			-size 477x400 \
			xc: \
			-sparse-color Barycentric '250.0,0 black %w,0 white' \
		\) \
		-compose SrcOver \
		-composite \
	\) \
	-gravity Center \
	-geometry 477x400+0+0! \
	-composite \
	-gravity NorthEast \
	-fill white \
	-strokewidth 2 \
	-stroke black \
	-pointsize 64 \
	-font Courier-Bold \
	-weight Heavy \
	-draw 'text 25,25 "Cryptpad"' \
	-weight Normal \
	-font Helvetica \
	-pointsize 32 \
	-strokewidth 0 \
	-fill black \
	-draw 'text 25,120 "Zero-knowledge"' \
	-draw 'text 25,150 "collaborative"' \
	-draw 'text 25,180 "realtime pad"' \
	cryptpad-carroussel.png
