filename='/vmfs/volumes/data/template/vmIDs.txt'
while read line;
do
  line=`expr $line`
  echo $line,${line}
  vim-cmd vmsvc.power.on $line
  sleep 90
done < $filename
