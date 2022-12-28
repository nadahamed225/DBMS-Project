#shopt -s extglob
#export LC_COLLATE=C
cd  ~/DBServer
count="$(ls ~/DBServer | wc -l)"

if (( $count == 0 )) 
   then
   echo "You don't have any database yet "
else 
   read -p "Enter The name of DB that you want to drop : " dbname
   
    if [[ $dbname == +([a-zA-Z]) ]]
    then
        if [[  -d $dbname ]]
          then
          rm -r  ~/DBServer/$dbname
echo "The DataBase dropped successfully:(( " 

        else
          echo "This dbname is not exists :(( " 
         fi
   else
          echo -e  "dbname can not contain special as("space",/,\,-,@,#,!,%,$,*,&,%,^,(,),|,\ " 
    fi
          . ~/bash_project/DBMenu.sh
fi
          . ~/bash_project/DBMenu.sh   
