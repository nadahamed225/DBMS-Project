cd ~/DBServer
count="$(ls ~/DBServer | wc -l)"

if (( $count == 0 )) 
   then
   echo "You don't have any database yet "
else 
   echo "your databases are : "
   ls -F ~/DBServer/ |grep / 
fi
          . ~/DBMenu.sh          
