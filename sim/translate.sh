sed -e"1,\$s/SNMPv2-SMI::enterprises/\.1\.3\.6\.1\.4\.1/g" $1 | sed -e"1,\$s/iso\./\.1\./g" | \
sed -e"1,\$s/ = Timeticks: /: SNMP TimeTicks [/g" | \
sed -e"1,\$s/ = Gauge32: /: SNMP Gauge32 [/g" | \
sed -e"1,\$s/ = Counter32: /: SNMP Counter32 [/g" | \
sed -e"1,\$s/ = IpAddress: /: SNMP Octet String [length = 46, fmt = RAW] = [/g" | \
sed -e"1,\$s/ = Hex-STRING: /: SNMP Octet String [length = 46, fmt = RAW] = [/g" | \
sed -e"1,\$s/ = STRING: /: SNMP Octet String [length = 46, fmt = RAW] = [/g" | \
sed -e"1,\$s/ = OID: / = /g" | \
sed -e"1,\$s/ = INTEGER: /: SNMP Int32 [/g"
