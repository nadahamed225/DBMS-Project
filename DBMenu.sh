#DBserver Menu
echo "DBserver Menu : "
select choice in "Create DB" "List DBs" "Connect To DB" "Drop DB" "Exit"
do
    case $choice in 
    "Create DB" )
             . ~/bash_project/createDB.sh
;;
    "List DBs" )
         . ~/bash_project/ListDB.sh  
;;
    "Connect To DB" )
            . ~/bash_project/ConnectDB.sh
;;
    "Drop DB" )
       . ~/bash_project/DropDB.sh
;;
    "Exit" )
           exit
           break
;;
            * )
                echo "Choose From above :((";;
    esac
done
