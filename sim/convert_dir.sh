rm -rf data
cp -rf data_empty data
dir=$1
for f in `find $dir -type f`
do
  echo "converting $f..."
  filename=`basename $f`
  tag=`echo $filename | awk '{ sub(".txt", ""); print $0 }'`
  #.1.3.6.1.2.1.1.5.0: SNMP Octet String [length = 13, fmt = RAW] = [
  sed -e"1,\$s/\.1.3.6.1.2\.1\.1\.5\.0:.*/.1.3.6.1.2.1.1.5.0: SNMP Octet String [length = 13, fmt = RAW] = [${tag}]/g" $f > tmpsnmp.txt
  sed -e"1,\$s///g" tmpsnmp.txt > t
  mv t tmpsnmp.txt
  dos2unix tmpsnmp.txt > /dev/null 2>&1
  ./convert.sh tmpsnmp.txt > data/${tag}.xml
done
