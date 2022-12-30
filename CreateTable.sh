cd ~/DBServer/$dbname/ 

read -p " Enter Table Name : " Tablename
typeset -i checktable=0
typeset -i checkcol=0
if [[ -f $Tablename ]]; then     
    echo -e "This Table name  is exists :(( " 
    . ~/bash_project/TableMenu.sh      
else
    if [[ $Tablename == +([a-zA-Z]) ]]; then
       touch  ~/DBServer/$dbname/$Tablename
       cd ~/DBServer/$dbname/$Tablename
       (( checktable ++ ));
       echo " your checktable is $checktable"
       echo -e "Table $Tablename created Successfully :))"
       typeset -i Coloms=0
       read -p "Enter Number of Columns : " Coloms
       typeset data[$Coloms]
       typeset dataType[$Coloms]
     for (( i=0 ; i<Coloms ; i++)) 
      do 
        if (( $i == 0 ));then
           echo  "Enter coloumn name as primary key : "
        else 
           echo  "Enter coloumn name :"
        fi

        read colName
        if [[ $colName == +([a-zA-Z]) ]]; then
          echo "your coloumn created successfully"
          data[$i]=$colName
          echo  "Choose Datatype of this coloumn (int / string):"
          read Type
          if [[ $Type == "int" || $Type == "string" ]]; then
            dataType[$i]=$Type
          else
            (( checkcol ++ ));
            echo "you inserted wrong datatype :(( "  
            break
          fi
        else 
            (( checkcol ++ ));
          echo -e  "Coloumn name can not contain special as("space",/,\,-,@,#,!,%,$,*,&,%,^,(,),|,\ " 
          break
        fi
       done
     else
            (( checkcol ++ ));
        echo -e  "Table name can not contain special as("space",/,\,-,@,#,!,%,$,*,&,%,^,(,),|,\ " 
     fi
  
    if [[ $checktable == 1 && $checkcol == 0 ]];then
       echo "Your data sorted :))"
       echo ${data[@]} >> $Tablename 
       echo ${dataType[@]} >> $Tablename
    else
      echo "Your data not sorted :(("
       rm   ~/DBServer/$dbname/$tablename
      . ~/bash_project/TableMenu.sh
    fi
    
fi
