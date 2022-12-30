cd ~/DBServer/$dbname/ 

read -p " Enter Table Name : " Tablename
<<<<<<< HEAD
typeset -i checktable=0
typeset -i checkcol=0
=======
>>>>>>> 3512ac492fb8f81d6f26388b0ac3265a5f8a1732
if [[ -f $Tablename ]]; then     
    echo -e "This Table name  is exists :(( " 
    . ~/bash_project/TableMenu.sh      
else
    if [[ $Tablename == +([a-zA-Z]) ]]; then
       touch  ~/DBServer/$dbname/$Tablename
       cd ~/DBServer/$dbname/$Tablename
<<<<<<< HEAD
       (( checktable ++ ));
=======
>>>>>>> 3512ac492fb8f81d6f26388b0ac3265a5f8a1732
       echo " your checktable is $checktable"
       echo -e "Table $Tablename created Successfully :))"
       typeset -i Coloms=0
       read -p "Enter Number of Columns : " Coloms
       typeset data[$Coloms]
       typeset dataType[$Coloms]
<<<<<<< HEAD
     for (( i=0 ; i<Coloms ; i++)) 
      do 
        if (( $i == 0 ));then
           echo  "Enter coloumn name as primary key : "
        else 
           echo  "Enter coloumn name :"
        fi

=======

       #echo " your Coloms is $Coloms"
     for (( i=0 ; i<Coloms ; i++)) 
      do 
           echo  "Enter coloumn name :"
>>>>>>> 3512ac492fb8f81d6f26388b0ac3265a5f8a1732
        read colName
        if [[ $colName == +([a-zA-Z]) ]]; then
          echo "your coloumn created successfully"
          data[$i]=$colName
          echo  "Choose Datatype of this coloumn (int / string):"
          read Type
          if [[ $Type == "int" || $Type == "string" ]]; then
            dataType[$i]=$Type
          else
<<<<<<< HEAD
            (( checkcol ++ ));
=======
           
>>>>>>> 3512ac492fb8f81d6f26388b0ac3265a5f8a1732
            echo "you inserted wrong datatype :(( "  
            break
          fi
        else 
<<<<<<< HEAD
            (( checkcol ++ ));
=======
           
>>>>>>> 3512ac492fb8f81d6f26388b0ac3265a5f8a1732
          echo -e  "Coloumn name can not contain special as("space",/,\,-,@,#,!,%,$,*,&,%,^,(,),|,\ " 
          break
        fi
       done
     else
<<<<<<< HEAD
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
=======
           
        echo -e  "Table name can not contain special as("space",/,\,-,@,#,!,%,$,*,&,%,^,(,),|,\ " 
     fi

       echo ${data[@]} >> $Tablename 
       echo ${dataType[@]} >> $Tablename
      . ~/bash_project/TableMenu.sh
>>>>>>> 3512ac492fb8f81d6f26388b0ac3265a5f8a1732
    
fi
