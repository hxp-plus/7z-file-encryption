#!/bin/bash

TARGET_DIR=$1
RANDOM_STR=$(head /dev/random | tr -dc '[:alnum:]' | head -c 64)

echo ${RANDOM_STR} > ./"${TARGET_DIR}.txt"
7z a -p"${RANDOM_STR}" -mhe ${TARGET_DIR}.7z ${TARGET_DIR}
mkdir -p encrypted
mv ${TARGET_DIR} encrypted/${TARGET_DIR}
