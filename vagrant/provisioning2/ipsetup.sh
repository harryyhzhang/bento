sudo sh -c 'echo "192.168.77.20	hadoopmaster" >> /etc/hosts'
sudo sh -c 'echo "192.168.77.21	hadoopslave1" >> /etc/hosts'
sudo sh -c 'echo "192.168.77.22	hadoopslave2" >> /etc/hosts'
sudo sh -c 'echo "192.168.77.23	hadoopslave3" >> /etc/hosts'

#sudo vi /usr/local/hadoop/etc/hadoop/hadoop-env.sh -c '%s/${JAVA_HOME}/\/usr\/lib\/jvm\/java-7-openjdk-amd64/g' -c ':wq'
sudo sed -i 's/${JAVA_HOME}/\/usr\/lib\/jvm\/java-7-openjdk-amd64/g' /usr/local/hadoop/etc/hadoop/hadoop-env.sh
