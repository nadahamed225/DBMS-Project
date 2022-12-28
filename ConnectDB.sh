shopt -s extglob
export LC_COLLATE=C
cd ~/DBServer
  echo "Enter Database Name : "
  read dbname 
if [[ $dbname == +([a-zA-Z]) ]];then
     if [[ -d $dbname ]]; then
         cd ~/DBServer/$dbname
         echo -e "Database $dbname was Successfully connected :))" 
         . ~/bash_project/TableMenu.sh
     else
         echo -e "Database $dbname isn't found :(("
         . ~/bash_project/DBMenu.sh    
     fi     
else
          echo -e  "dbname can not contain special as("space",/,\,-,@,#,!,%,$,*,&,%,^,(,),|,\ " 
          . ~/bash_project/DBMenu.sh
       

fi


