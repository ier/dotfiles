#!/bin/bash

sourceFileName=$1
sourceEnc=`uchardet $sourceFileName`

targetFileName=$sourceFileName".new"
targetEnc="UTF-8"

iconv -f $sourceEnc -t $targetEnc $sourceFileName > $targetFileName

rm $sourceFileName
mv $targetFileName $sourceFileName
