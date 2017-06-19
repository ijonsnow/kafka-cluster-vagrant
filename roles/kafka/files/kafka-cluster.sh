#! /bin/bash

host=`hostname`

if [ $host = "node-01" ]
then
    `/usr/local/lib/kafka/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 1 --topic my-replicated-topic`

fi




