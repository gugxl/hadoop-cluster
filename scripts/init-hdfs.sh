#!/bin/bash

# 初始化 HDFS，只在首次启动时执行
if [ ! -f /hadoop/dfs/name/current/VERSION ]; then
  echo "Formatting HDFS..."
  $HADOOP_HOME/bin/hdfs namenode -format -force
fi

# 启动 HDFS 服务
$HADOOP_HOME/sbin/start-dfs.sh
