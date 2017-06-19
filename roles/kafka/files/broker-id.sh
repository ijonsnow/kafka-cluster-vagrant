#! /bin/bash

host=`hostname`
id=`echo -n $host | tail -c 1`
sed -i "s&broker.id=0&broker.id=$id&"  /usr/local/lib/kafka/config/server.properties
sed -i "s&host.name=localhost&host.name=$host&"  /usr/local/lib/kafka/config/server.properties
sed -i "s&localhost:2181&10.0.0.1:2181,10.0.0.2:2181&"  /usr/local/lib/kafka/config/server.properties
