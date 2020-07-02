NUM=0
rm vmIDs.txt
vim-cmd /solo/register /vmfs/volumes/data/template/bootstrap/bootstrap.vmx >> vmIDs.txt
while [ $NUM -lt 3 ]
do
  i=master${NUM}
  vim-cmd /solo/register /vmfs/volumes/data/template/${i}/${i}.vmx >> vmIDs.txt
  NUM=`expr $NUM + 1`
done
NUM=0
while [ $NUM -lt 3 ]
do
  b=worker${NUM}
  vim-cmd /solo/register /vmfs/volumes/data/template/${b}/${b}.vmx >> vmIDs.txt
  NUM=`expr $NUM + 1`
done
