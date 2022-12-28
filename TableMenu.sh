cd . ~/DBServer/$dbname

echo -e "Table Menu : "
select choice in "Create" "List" "DropTable" "Insert" "Select" "DropRow" "Updata" "Back to DBMenu"
do
    case $choice in
        "Create" )
            
              ;;
        "List" )
            . ~/bash_project/ListTable.sh
              ;;
        "DropTable" ) 
            . ~/bash_project/DropTable.sh
              ;;
        "Insert" )
            
              ;; 
        "Select" ) 
            
              ;; 
        "DropRow" )
            
              ;; 
        "Updata" )
            
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
