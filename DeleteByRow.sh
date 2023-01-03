cd ~/DBServer/$dbname

echo "Your data is : "
 awk '
   begin {}
   { print NR,$0 }
   end{}
 ' ~/DBServer/$dbname/$Tablename




echo -n "Enter Your Row Number : "
read x
sed -i "$x d" ~/DBServer/$dbname/$Tablename 
echo -n "Your row data is deleted"
