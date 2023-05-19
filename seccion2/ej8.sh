#!/bin/bash -x

#sorted_files
#    ├── code
#    │   └── <language> (crear un dir para cada lenguaje que se encuentre)
#    ├── docs
#    │   ├── presentations (.ppt)
#    │   └── text (.doc y .txt)
#    └── media
#        ├── audio (.mp3, .wav)
#        ├── images (.jpg, .png, .gif)
#        └── video (.mp4, .mkv)

FILESDIR=random_files
SORTED_FILES_DIR=sorted_files

CODE_DIR=$SORTED_FILES_DIR/code

DOCS_DIR=$SORTED_FILES_DIR/docs
PRESENTATIONS_DIR=$DOCS_DIR/presentations
TEXT_DIR=$DOCS_DIR/text

MEDIA_DIR=$SORTED_FILES_DIR/media
AUDIO_DIR=$MEDIA_DIR/audio
IMAGE_DIR=$MEDIA_DIR/images
VIDEO_DIR=$MEDIA_DIR/video

mkdir -p $DOCS_DIR

for F in $FILESDIR/*
do 
	echo $F
	FILE=$(basename $F)
	echo $FILE
	case $F in
		*.sh)
			BASH_DIR=$CODE_DIR/bash
			mkdir -p $BASH_DIR
			cp $F $BASH_DIR/$FILE;;
		*.py)
			PYTHON_DIR=$CODE_DIR/python
			mkdir -p $PYTHON_DIR
			cp $F $PYTHON_DIR/$FILE;;
		*.c)
			C_DIR=$CODE_DIR/c
			mkdir -p $C_DIR
			cp $F $C_DIR/$FILE;;	 
		*.ppt)
			mkdir -p $PRESENTATIONS_DIR
			cp $F $PRESENTATIONS_DIR/$FILE;;
		*.doc|*.txt)
			mkdir -p $TEXT_DIR
			cp $F $TEXT_DIR/$FILE;;
		*.mp3|*.wav])
			mkdir -p $AUDIO_DIR
			cp $F $AUDIO_DIR/$FILE;;
		*.mp4|*.mkv)
			mkdir -p $VIDEO_DIR
			cp $F $VIDEO_DIR/$FILE;;
		*.png|*.gif)
			mkdir -p $IMAGE_DIR
			cp $F $IMAGE_DIR/$FILE;;
		*) ;;
	esac
done