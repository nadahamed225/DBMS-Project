shopt -s extglob
export LC_COLLATE=C
#export LANG=ru_RU.UTF-8
#export LC_CTYPE=C

cd ~/DBServer
read -p "Enter The name of DB : " dbname
            
   if [[ $dbname =~ [[:space:]]* ]]
      then
      echo -e  "dbname can not contain spaces :(( , Enter a correct dbname :" 
      read dbname
    
    elif [[ -d $dbname ]] 
      then     
      echo -e "This dbname is exists :(( , Enter a correct dbname :" 
      read dbname       
 
    else
       if [[ $dbname == +([a-zA-Z]) ]]
          then
          mkdir  ~/DBServer/$dbname
          cd ~/DBServer/$dbname
         echo -e "Database $dbname created Successfully :))"
       #special char
       else
          echo -e  "dbname can not contain special char :(( , Enter a correct dbname : " 
          read dbname
       fi

   fi 
          . ~/DBMenu.sh          
