#!/bin/bash

function is_in_bin {
	# Function checks if cmd is in /bin. Prints out result and returns 0 if it exists, 1 if it does not.
	local CMD_NAME=$1
	if [ -e /bin/$CMD_NAME ]
	then
		echo $CMD_NAME is in /bin.
		return 0
	else
		return 1
	fi
}

function cmd_size {
	# Function checks if cmd is bigger than 10KB. Prints out result and returns 0 if it is, 1 if it is not.
	local CMD_NAME=$1
	local CMD_PATH=$(which $CMD_NAME)
	local CMD_SIZE=$(($(stat -c %s $CMD_PATH)/1024))
	local SIZE_LIMIT=10
	
    if [ $CMD_SIZE -gt $SIZE_LIMIT ]
	then
		echo $CMD_NAME is bigger than 10KB \( $CMD_SIZE \)
		return 0
	else
        echo $CMD_NAME solo ocupa $CMD_SIZE
		return 1
	fi	
}

for ARG_CMD in $@
do
    is_in_bin $ARG_CMD
    cmd_size $ARG_CMD
done
