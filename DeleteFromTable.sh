cd ~/DBServer/$dbname
echo -e "Enter Table Name ,you want to select data in it : "
read Tablename
if [[ -f $Tablename ]]; then     
  echo "Welcome to  $Tablename "
  echo -e "Delete From Table Menu : "
  select choice in "ALL" "By Row"
  do
     case $choice in
        "ALL" )
            . ~/bash_project/DeleteALL.sh
              ;;
        "By Row" )
            . ~/bash_project/DeleteByRow.sh
            break
              ;;
         *)
                echo "Choose From above :(("
              ;;
      esac
  done
else 
  echo "This table is not exist :(( "
fi
