
#!/system/bin/env bash

INPUT_PATH='/data/app'
INPUT_FILE_NAME='base.apk'
OUTPUT_PATH='/storage/emulated/0/apks'

shopt -s globstar

for item in "${INPUT_PATH}"/**; do
 if [[ -f "$item" && "${item##*/}" == "$INPUT_FILE_NAME" ]]; then

INPUT_FILE_FULL_PATH="${item%/*}"
INPUT_FILE_PARENT_DIR="${INPUT_FILE_FULL_PATH##*/}"
OUTPUT_FILE_NAME="${INPUT_FILE_PARENT_DIR}.${INPUT_FILE_NAME##*.}"

 cp "${item}" "${OUTPUT_PATH}/${OUTPUT_FILE_NAME}"
   fi
 done 
