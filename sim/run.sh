cd /Users/tohss/dev/sim
ifconfig lo0  | grep 10.10.10.5 > /dev/null
if [ $? -ne 0 ]
then
  for ((i=1;i<200;i++))
  do
    sudo ifconfig lo0 alias 10.10.10.$i;
  done
fi

cd data
PRJFILE=test.prj
rm -rf $PRJFILE
echo "<?xml version=\"1.0\"  encoding=\"UTF-8\"?>" >> $PRJFILE
echo "<Networks name=\"Test\">" >> $PRJFILE
sim_files=`ls *xml | grep -v config.xml | grep -v test.xml | sort`
index=0
for filename in test $sim_files
do
  ((index=index+1))
  ip=10.10.10.$index
  filename=`echo $filename | awk '{ sub(".xml", ""); print $0; }'`
  echo "<Simulator initialState=\"up\" port=\"161\"" >> $PRJFILE
  echo "  name=\"$filename\" ipAddress=\"$ip\">" >> $PRJFILE
  echo "  <configFile name=\"data/config.xml\"/>" >> $PRJFILE
  echo "  <trapFile/>" >> $PRJFILE
  echo "  <dataFile name=\"data/$filename.xml\"/>" >> $PRJFILE
  echo "  <device name=\"generic\"/>" >> $PRJFILE
  echo "</Simulator>" >> $PRJFILE
done
echo "</Networks>" >> $PRJFILE
cd ..
SIM="."
MYCLSPATH="$SIM/lib/simulatoraux.jar:$SIM/lib/snmpSimulatorCmd.jar"
MYCLASS=com.ireasoning.ui.SimMainFrame 
sudo java -Xms128m -Xmx2024m -classpath "$MYCLSPATH" $MYCLASS -help
