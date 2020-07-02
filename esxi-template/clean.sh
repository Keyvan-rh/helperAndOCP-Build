#!/bin/sh
NUM=0
while [ $NUM -lt 3 ]
do
  i=master${NUM}
  rm -rf ${i}
  b=worker${NUM}
  rm -rf ${b}
  NUM=`expr $NUM + 1`
done
rm -rf bootstrap
