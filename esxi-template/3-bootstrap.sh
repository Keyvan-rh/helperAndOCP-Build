#!/bin/sh
i=bootstrap
cp -rf ocp4temp/ ${i}
cd ${i}
sed 's/ocp4temp/'"$i"'/g'  ocp4temp.vmx > ${i}.vmx
sed 's/ocp4temp/'"$i"'/g'  ocp4temp.vmdk > ${i}.vmdk
mv ocp4temp.vmsd ${i}.vmsk
mv ocp4temp-flat.vmdk ${i}-flat.vmdk
rm -f ocp4*
