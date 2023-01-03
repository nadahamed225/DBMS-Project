#!/usr/bin/bash
export LC_COLLATE=C
shopt -s extglob
cd ~/DBServer/$dbname
  declare -a arrindex 
  declare -i counter=0
  declare -i flag=0
  old=""
  new=""
read -p "Enter Table Name ,you want to update data in it : " Tablename
if [[ -f $Tablename ]]; then     
  echo "Welcome to  $Tablename "
  echo "press number of your choice in Order"
  sed -n '1p'  ~/DBServer/$dbname/$Tablename
  read -p "Enter number of your choice " i
  read -p "Enter the word that you want to replace it : " oldword
  read -p "Enter new word : " newword
  old=$oldword
  new=$newword
  #declare -a coldata ;
 
  convert=$(cut -d" " -f$i ~/DBServer/$dbname/$Tablename | sed '1,2d' )
  declare -a array=($convert)

  len=$(cut -d" " -f$i ~/DBServer/$dbname/$Tablename | sed '1,2d' | wc -w )   
  for (( a=0; a < len; a++ ))
   do
     if [[ $oldword == ${array[$a]} ]]
       then
       flag=1
       let count=$a+1
       arrindex[$counter]=$count
       counter=$counter+1
     fi
   done
else 
  echo "This table is not exist :(( "
fi

 if [[ $flag == 1 ]]
 then
  echo $new
   echo $old
   echo ${arrindex[@]}
   echo $Tablename
   for (( x=0; x < counter; x++ ))
     do
       sed -i "s/$old/$new/" $Tablename
       #sed -i "${arrindex[$x]}s/$old/$new/" $Tablename
       #sed -i "${column_index[$g]}s/$copy_user_value/$newValue/" $name
     done
 fi





























