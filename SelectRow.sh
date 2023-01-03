cd ~/DBServer/$dbname

echo "Your data is : "
 awk '
   begin {}
   { print NR,$0 }
   end{}
 ' ~/DBServer/$dbname/$Tablename
#sed -n '3,$p' ~/DBServer/$dbname/$Tablename 

echo -n "Enter Your Row Number : "
read i
echo "Your data : "
 awk '
   begin {}
   { if(NR=='$i') print $0 }
   end{}
 ' ~/DBServer/$dbname/$Tablename
