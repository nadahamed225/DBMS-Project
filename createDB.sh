shopt -s extglob
export LC_COLLATE=C
#export LANG=ru_RU.UTF-8
#export LC_CTYPE=C

cd ~/DBServer
read -p "Enter The name of DB : " dbname
            

    if [[ -d $dbname ]] 
      then     
      echo -e "This dbname is exists :(( , Enter a correct dbname :" 
       . ~/bash_project/DBMenu.sh      
 
    else
       if [[ $dbname == +([a-zA-Z]) ]]
          then
          mkdir  ~/DBServer/$dbname
          cd ~/DBServer/$dbname
         echo -e "Database $dbname created Successfully :))"
       #special char
       else
          echo -e  "dbname can not contain special as("space",/,\,-,@,#,!,%,$,*,&,%,^,(,),|,\ " 
          . ~/bash_project/DBMenu.sh
       fi

   fi 
          . ~/bash_project/DBMenu.sh          
