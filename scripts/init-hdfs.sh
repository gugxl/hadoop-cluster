#!/bin/bash
if [ ! -f /hadoop/dfs/name/current/VERSION ]; then
  echo "Formatting HDFS..."
  $HADOOP_HOME/bin/hdfs namenode -format -force
fi
$HADOOP_HOME/sbin/start-dfs.sh