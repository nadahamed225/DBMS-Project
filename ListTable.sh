cd  ~/DBServer/$dbname/

count="$(ls ~/DBServer/$dbname/ | wc -l )"
#count= "$(find ~/DBServer/$dbname -type f | wc -l | grep -v /)"
echo $count
if (( $count == 0 )); then
echo  "you don't have any tables yet "
else 
echo -e  "Your Tables are : " 
#ls  ./
ls -a
fi
. ~/bash_project/TableMenu.sh
