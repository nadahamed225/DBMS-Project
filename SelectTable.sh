cd ~/DBServer/$dbname

echo -e "Enter Table Name ,you want to select data in it : "
read Tablename
if [[ -f $Tablename ]]; then     
  echo "Welcome to  $Tablename "
  select choice in "ALL" "Column name" "Row name" "Back to TableMenu"
   do
    case $choice in
        "ALL" )
            . ~/bash_project/SelectAll.sh
              ;;
        "Column name" )
            . ~/bash_project/SelectCol.sh
              ;;
        "Row name" )
            . ~/bash_project/SelectRow.sh
              ;;
        "Back to TableMenu" )
            . ~/bash_project/TableMenu.sh
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
