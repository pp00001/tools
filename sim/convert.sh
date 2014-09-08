BASE_DIR=/Users/tohss/dev/6x/netgain
START_CLASS=netgain.protocols.SnmpWalkConverter
OPTS="$OPTS -classpath $BASE_DIR/web/classes"
OPTS="$OPTS -Dioss.home=$BASE_DIR"
java -Xmx500m -Dttest=1 $OPTS $START_CLASS $*
