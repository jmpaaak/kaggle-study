#!/bin/bash

if [[ "$#" -ne 2 ]]; then
	echo "`basename ${0}`:usage: [-c COMPETITION] | [-d DATASETS]" 
	exit 1
fi

OPTION="${1}" 
CURDIR=$(cd $(dirname $0); pwd)
TARGET_DIR="${CURDIR}"
case ${OPTION} in
	-c) c="${2}" 
		mkdir -p ${TARGET_DIR}/competitions/${2}/data
		echo "mkdir -p ${TARGET_DIR}/competitions/${2}/data done."
		kaggle config path -p ${TARGET_DIR}
		kaggle competitions download -c $c
		find ${TARGET_DIR}/competitions/${2}/ -maxdepth 1 -type f -exec mv {} ${TARGET_DIR}/competitions/${2}/data \;
		echo "mv ${TARGET_DIR}/competitions/${2}/* ${TARGET_DIR}/competitions/${2}/data"
		;; 
	-d) d="${2}" 
		mkdir -p ${TARGET_DIR}/datasets/${2}/data
		echo "mkdir -p ${TARGET_DIR}/datasets/${2}/data done."
		kaggle config path -p ${TARGET_DIR}
		kaggle datasets download -d $d
		find ${TARGET_DIR}/datasets/${2}/ -maxdepth 1 -type f -exec mv {} ${TARGET_DIR}/datasets/${2}/data \;
		echo "mv ${TARGET_DIR}/datasets/${2}/* ${TARGET_DIR}/datasets/${2}/data"
		;; 
	*)  
		echo "`basename ${0}`:usage: [-c COMPETITION] | [-d DATASETS]" 
		exit 1
		;; 
esac 

exit 0
