shopt -s extglob
export LC_COLLATE=C
cd ~/DBServer/$dbname/
echo "jfjfj"
count="$(ls -F ~/DBServer/$dbname | wc -l)"
if (( $count == 0 )) 
   then
   echo "You don't have any table yet "
else 
  read -p "Enter The name of  Table that you want to drop :  " tablename
  if [[ $tablename == +([a-zA-Z.]) ]]
     then
        if [[  -f $tablename ]]
          then
          rm   ~/DBServer/$dbname/$tablename
          echo "The Table dropped successfully:(( " 
        else
          echo "This Table is not exists :(( " 
         fi
           else
          echo -e  "dbname can not contain special as("space",/,\,-,@,#,!,%,$,*,&,%,^,(,),|,\ " 
    fi
                   . ~/bash_project/Menu.sh
fi
          . ~/bash_project/TableMenu.sh
