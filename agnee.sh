search=`echo $1|  sed 's/.com//g;s/.net//g;s/.io//g'` 
echo $search
python agnee.py -a -d $1 | grep "$search\|paste" | grep -v "Dork\|links" | tee ${1}.agnee.txt
