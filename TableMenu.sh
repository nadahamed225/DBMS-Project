cd . ~/DBServer/$dbname

echo -e "Table Menu : "
select choice in "Create" "List" "DropTable" "Insert" "Select" "Delete from Table" "Updata" "Back to DBMenu"
do
    case $choice in
        "Create" )
            . ~/bash_project/CreateTable.sh
              ;;
        "List" )
            . ~/bash_project/ListTable.sh
              ;;
        "DropTable" ) 
            . ~/bash_project/DropTable.sh
              ;;
        "Insert" )
             . ~/bash_project/InsertTable.sh
              ;; 
        "Select" ) 
             . ~/bash_project/SelectTable.sh
              ;; 
        "Delete from Table" )
            . ~/bash_project/DeleteFromTable.sh
              ;; 
        "Updata" )
            . ~/bash_project/UpdateTable.sh
              ;;
        "Back to DBMenu" )
            . ~/bash_project/DBMenu.sh

            break
              ;;
         *)
                echo "Choose From above :(("
;;
    esac
done
