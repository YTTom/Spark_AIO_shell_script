#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install vim -y

wget http://ftp.tc.edu.tw/pub/Apache/spark/spark-2.1.0/spark-2.1.0-bin-hadoop2.7.tgz
tar -zxvf spark-2.1.0-bin-hadoop2.7.tgz
mv spark-2.1.0-bin-hadoop2.7 /usr/lib
echo "export PATH=$PATH:/usr/lib/spark-2.1.0-bin-hadoop2.7/bin" >> /etc/bash.bashrc
sudo apt-get install default-jre
tar -zxvf?jre1.8.0_45.gz
mv jre1.8.0_45 /usr/lib
echo "export JAVA_HOME=/usr/lib/jre1.8.0_45" >> /etc/bash.bashrc
echo "export PATH=$PATH:/usr/lib/jre1.8.0_45/bin" >> /etc/bash.bashrc

spark-shell
