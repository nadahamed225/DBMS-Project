cd ~/DBServer/$dbname/ 

read -p " Enter Table Name : " Tablename
if [[ -f $Tablename ]]; then     
    echo -e "This Table name  is exists :(( " 
    . ~/bash_project/TableMenu.sh      
else
    if [[ $Tablename == +([a-zA-Z]) ]]; then
       touch  ~/DBServer/$dbname/$Tablename
       cd ~/DBServer/$dbname/$Tablename
       echo " your checktable is $checktable"
       echo -e "Table $Tablename created Successfully :))"
       typeset -i Coloms=0
       read -p "Enter Number of Columns : " Coloms
       typeset data[$Coloms]
       typeset dataType[$Coloms]

       #echo " your Coloms is $Coloms"
     for (( i=0 ; i<Coloms ; i++)) 
      do 
           echo  "Enter coloumn name :"
        read colName
        if [[ $colName == +([a-zA-Z]) ]]; then
          echo "your coloumn created successfully"
          data[$i]=$colName
          echo  "Choose Datatype of this coloumn (int / string):"
          read Type
          if [[ $Type == "int" || $Type == "string" ]]; then
            dataType[$i]=$Type
          else
           
            echo "you inserted wrong datatype :(( "  
            break
          fi
        else 
           
          echo -e  "Coloumn name can not contain special as("space",/,\,-,@,#,!,%,$,*,&,%,^,(,),|,\ " 
          break
        fi
       done
     else
           
        echo -e  "Table name can not contain special as("space",/,\,-,@,#,!,%,$,*,&,%,^,(,),|,\ " 
     fi

       echo ${data[@]} >> $Tablename 
       echo ${dataType[@]} >> $Tablename
      . ~/bash_project/TableMenu.sh
    
fi
