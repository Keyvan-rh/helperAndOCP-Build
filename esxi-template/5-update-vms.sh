filename='/vmfs/volumes/data/template/vmIDs.txt'
while read line;
do
  line=`expr $line`
  echo $line,${line}
  vim-cmd /vmsvc/device.diskextend $line 104857600 0 0
done < $filename
