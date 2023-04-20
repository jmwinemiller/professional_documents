#! /bin/bash

## Colors
NC="\033[0m"
BLUE="\033[4;34m"
GREEN="\033[4;32m"

## Files
COVERLETTER=out/CoverLetter.pdf
CV=out/CV.pdf
RESUME=out/Resume.pdf

FILES=( $COVERLETTER $CV )
FILES+=( "$RESUME" )

for value in ${FILES[@]};
do
    FILE=${value:4}
    echo $FILE

    echo "${GREEN}Copying $value to Desktop Folder"
    cp $value ~/Desktop/JordanWinemiller_$FILE    
    if [[ $FILE != *"CoverLetter"* ]]
    then
        echo "${BLUE}Copying $value to Portfolio Static Folder${NC}"
        cp $value ../../portfolio/static/JordanWinemiller_$FILE    
    fi
done
