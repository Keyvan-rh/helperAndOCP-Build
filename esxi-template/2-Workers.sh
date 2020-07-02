#!/bin/sh
NUM=0

while [ $NUM -lt 3 ]
do
  i=worker${NUM}
  NUM=`expr $NUM + 1`
  mac1=00:50:56:11:33:${NUM}${NUM}
  cp -rf ocp4temp/ ${i}
  cd ${i}
  sed 's/ocp4temp/'"$i"'/g'  ocp4temp.vmx > ocp4temp.tmp
  sed 's/ocp4temp/'"$i"'/g'  ocp4temp.vmdk > ${i}.vmdk
  sed 's/00:50:56:11:11:11/'"$mac1"'/g' ocp4temp.tmp > ocp4temp1.tmp
  sed 's/10240/16384/g' ocp4temp1.tmp > ${i}.vmx
  mv ocp4temp.vmsd ${i}.vmsk
  mv ocp4temp-flat.vmdk ${i}-flat.vmdk
  rm -f ocp4*
  cd ..
done
