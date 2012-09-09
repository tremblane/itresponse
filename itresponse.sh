#!/bin/bash

#LINES=`wc -l $1 | awk '{print $1}'`
LINES=`wc -l responses.txt | awk '{print $1}'`
NUMBER=$RANDOM
let "NUMBER %= $LINES"
let "NUMBER += 1" # "1 to $LINES" instead of "0 to ($LINES-1)"

#echo `sed -n ${NUMBER}p $1`
echo `sed -n ${NUMBER}p responses.txt`
