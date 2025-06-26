FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV HADOOP_VERSION=3.3.6

# 安装依赖
RUN apt-get update && apt-get install -y openjdk-8-jdk ssh rsync && apt-get clean

# 设置环境变量
ENV HADOOP_HOME=/opt/hadoop
ENV PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

# 添加 Hadoop 压缩包并解压
COPY archives/hadoop-${HADOOP_VERSION}.tar.gz /opt/
RUN cd /opt && \
    tar -xzf hadoop-${HADOOP_VERSION}.tar.gz && \
    mv hadoop-${HADOOP_VERSION} hadoop && \
    rm hadoop-${HADOOP_VERSION}.tar.gz