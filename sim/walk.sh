BASE_DIR=/Users/tohss/dev/6x/netgain
START_CLASS=netgain.protocols.SnmpWalker
jars=`ls $BASE_DIR/web/lib/*.jar`
for cls in $jars
do
  CP=$CP:$cls
done
jars=`ls $BASE_DIR/tomcat/server/lib/*.jar`
for cls in $jars
do
  CP=$CP:$cls
done
jars=`ls $BASE_DIR/tomcat/common/lib/*.jar`
for cls in $jars
do
  CP=$CP:$cls
done
jars=`ls $BASE_DIR/tomcat/bin/*.jar`
for cls in $jars
do
  CP=$CP:$cls
done
OPTS="$OPTS -classpath $BASE_DIR/web/classes:$CP"
OPTS="$OPTS -Dioss.home=$BASE_DIR"
OPTS="$OPTS -Dcharset=en_US"
java $OPTS $START_CLASS $*
