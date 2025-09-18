#!/bin/bash

REF_MAN_DIR="Reference/male"
REF_WOMAN_DIR="Reference/female"
USED_MAN_DIR="Reference/used_male"
USED_WOMAN_DIR="Reference/used_female"

OUTPUT_DIR="/root/facefusion/outputs/couple_01"
TMP_DIR="/root/facefusion/tmp"
TARGET_DIRS=("/root/facefusion/targets/couple_01" "/root/facefusion/targets/wedding_01")

LOG_FILE="$OUTPUT_DIR/swap_records_couple.txt"
mkdir -p $USED_MAN_DIR $USED_WOMAN_DIR $OUTPUT_DIR $TMP_DIR
echo "Face Swap Records" > $LOG_FILE
echo "======================" >> $LOG_FILE

for DIR in "${TARGET_DIRS[@]}"; do
  for IMG in $DIR/*.{jpg,png}; do
    [ -e "$IMG" ] || continue   

    REF_MAN=$(ls $REF_MAN_DIR | head -n 1)
    REF_WOMAN=$(ls $REF_WOMAN_DIR | head -n 1)

    if [ -z "$REF_MAN" ] || [ -z "$REF_WOMAN" ]; then
      echo "No more reference faces available. Stopping."
      exit 1
    fi

    BASENAME=$(basename "$IMG")
    echo "Processing $IMG using $REF_MAN and $REF_WOMAN"

    TMP_FILE="$TMP_DIR/tmp_$BASENAME"
    python facefusion.py headless-run \
      --source-paths "$REF_MAN_DIR/$REF_MAN" \
      --target-path "$IMG" \
      --output-path "$TMP_FILE" \
      --processors face_swapper \
      --face-selector-gender male

    FINAL_FILE="$OUTPUT_DIR/$BASENAME"
    python facefusion.py headless-run \
      --source-paths "$REF_WOMAN_DIR/$REF_WOMAN" \
      --target-path "$TMP_FILE" \
      --output-path "$FINAL_FILE" \
      --processors face_swapper \
      --face-selector-gender female

    echo "$BASENAME swapped with $REF_MAN and $REF_WOMAN -> Output: $FINAL_FILE" >> $LOG_FILE

    mv "$REF_MAN_DIR/$REF_MAN" "$USED_MAN_DIR/"
    mv "$REF_WOMAN_DIR/$REF_WOMAN" "$USED_WOMAN_DIR/"

    rm "$TMP_FILE"
  done
done

echo "All processing completed. Records saved to $LOG_FILE"
