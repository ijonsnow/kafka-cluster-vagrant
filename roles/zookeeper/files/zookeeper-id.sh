#! /bin/bash

host=`hostname`
id=`echo -n $host | tail -c 1`
echo $id > /var/lib/zookeeper/myid
echo "maxClientCnxns=60" >> /usr/local/lib/zookeeper/conf/zoo.cfg
echo "server.1=10.0.0.1:2888:3888" >> /usr/local/lib/zookeeper/conf/zoo.cfg
echo "server.2=10.0.0.2:2888:3888" >> /usr/local/lib/zookeeper/conf/zoo.cfg
