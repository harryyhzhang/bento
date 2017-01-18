sudo sh -c 'echo "HadoopMaster"> /usr/local/hadoop/etc/hadoop/masters'
sudo sh -c 'echo "HadoopSlave1"> /usr/local/hadoop/etc/hadoop/slaves'
sudo sh -c 'echo "HadoopSlave2">> /usr/local/hadoop/etc/hadoop/slaves'
sudo sh -c 'echo "HadoopSlave3">> /usr/local/hadoop/etc/hadoop/slaves'

sudo rm -rf /usr/local/hadoop/hadoop_data/
sudo mkdir -p /usr/local/hadoop/hadoop_data/hdfs/namenode
sudo chown -R hduser:hadoop /usr/local/hadoop/

