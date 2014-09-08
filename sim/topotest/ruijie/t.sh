for ((i=0;i<255;i++))
do
  ip=10.3.155.$i
  filename=snmpwalk$ip.txt
  if [ -f $filename ]
  then
    #echo $ip
    #grep ".1.3.6.1.2.1.2.2.1.6" $filename | awk '{ sub(".* = ", ""); print $0; }' | sort -u 
    ../convert.sh $filename > ../data/$ip.xml
    
  fi
done
