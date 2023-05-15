SORTED_FILES_DIR=sorted_files
DOCS_DIR=$SORTED_FILES_DIR/docs
CODE_DIR=$SORTED_FILES_DIR/code

mkdir -p $DOCS_DIR


for FILE in randon_files/*
do 
	echo $FILES
	case $FILES
		*.sh)
			BASH_DIR=$CODE_DIR/bash
			mkdir -p $BASH_DIR
			cp $FILE $BASH_DIR/$FILE;;
		*.py)
			PYTHON_DIR=$CODE_DIR/python
			mkdir -p $PYTHON_DIR
			cp $FILE $PYTHON_DIR/$FILE;;			 
		*) ;;

	esac
done
