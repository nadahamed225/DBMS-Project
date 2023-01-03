cd ~/DBServer/$dbname

echo "press number of your choice in Order"
sed -n '1p'  ~/DBServer/$dbname/$Tablename
read i
echo "Your data : "
cut -d" " -f$i ~/DBServer/$dbname/$Tablename | sed '2d' 
