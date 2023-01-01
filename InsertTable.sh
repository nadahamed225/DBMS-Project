cd ~/DBServer/$dbname
typeset -i enterdata=0
echo -e "Enter Table Name ,you want to insert data into it : "
read Tablename
if [[ -f $Tablename ]]; then     
  echo "Welcome to  $Tablename "
  #echo ${data[@]} 
  #echo ${dataType[@]} 
<<COMMENT
 awk '
   begin {
   { print $0 }
   end{}
 ' ~/DBServer/$dbname/$Tablename
COMMENT
 echo -n "Enter "
 sed -n -e'1p' ~/DBServer/$dbname/$Tablename 
 read -a data
 #echo ${#data[@]}
 #echo ${data[@]} 

 if [[ $data =~ [0-9]+$ ]];then
    pks=(`
       awk '
       begin { FS=" "; }
       {
       if (NR>1){
         print $1 
         }
       } '  ~/DBServer/$dbname/$Tablename `)
    #echo ${pks[@]} 
    for i in "${pks[@]}"
      do
        if [[ ${data} -eq ${pks[i]} ]]; then
          (( enterdata ++ ));
          echo "this data is exist , PK can not repeated :(("
          break;
        fi 
      done
     if [[ $enterdata -eq 0 ]]; then
       echo ${data[@]} >> $Tablename 
     fi
 else
   echo "First data must be integer"   
 fi
else
  echo "This table is not exist :(( "
fi
