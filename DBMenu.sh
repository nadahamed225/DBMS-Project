#DBserver Menu
echo "DBserver Menu : "
select choice in "Create DB" "List DBs" "Connect To DB" "Drop DB" "Exit"
do 
    case $choice in 
    "Create DB" )
             . ~/createDB.sh
;;
    "List DBs" )
         . ~/ListDB.sh  
;;
    "Connect To DB" )
            
;;
    "Drop DB" )
       
;;
    "Exit" )
           exit
           break
;;
            * )
                echo "Choose From above :((";;
    esac
done
