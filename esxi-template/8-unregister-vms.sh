filename='/vmfs/volumes/data/template/vmIDs.txt'
while read line;
do

  line=`expr $line`
  echo $line,${line}
  vim-cmd vmsvc/power.off $line
  sleep 15
  vim-cmd vmsvc/unregister $line
done < $filename
