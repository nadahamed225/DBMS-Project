cd ~/DBServer
count="$(ls ~/DBServer | wc -l)"
echo $count
if (( $count == 0 )) 
   then
   echo "You don't have any database yet "
else 
   echo "your databases are : "
   ls -F ~/DBServer/ |grep / 
fi
          . ~/bash_project/DBMenu.sh          
