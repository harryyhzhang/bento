sudo sh -c 'echo "192.168.77.21	HadoopSlave1" >> /etc/hosts'
sudo sh -c 'echo "192.168.77.22	HadoopSlave2" >> /etc/hosts'
sudo sh -c 'echo "192.168.77.23	HadoopSlave3" >> /etc/hosts'

#sudo vi /usr/local/hadoop/etc/hadoop/hadoop-env.sh -c '%s/${JAVA_HOME}/\/usr\/lib\/jvm\/java-7-openjdk-amd64/g' -c ':wq'
sudo sed -i 's/${JAVA_HOME}/\/usr\/lib\/jvm\/java-7-openjdk-amd64/g' /usr/local/hadoop/etc/hadoop/hadoop-env.sh
