#!/bin/bash

#creation of DB_Engine 

if [ -d ~/DBServer ]
then 
    echo -e "Your DBserver is exist :))\n"
    cd ~/DBServer
else
    mkdir ~/DBServer
    echo -e "Your DBserver is made :))\n "
    cd ~/DBserver
fi
#go to DBserver Menu
. ~/DBMenu.sh
