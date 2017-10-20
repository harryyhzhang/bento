echo "### $1"
sudo sh -c '(echo "Acquire::http::proxy \"http://10.100.33.50:8080/\";";  echo "Acquire::ftp::proxy \"ftp://10.100.33.50:8080/\";";  echo "Acquire::https::proxy \"https://10.100.33.50:8080/\";") >  /etc/apt/apt.conf'
# although proxy was set in etc/apt/apt.conf, but for some packages which is downloaded through http, it still need to setup proxy envrionment variable
export http_proxy="http://10.100.33.50:8080"
export https_proxy="https://10.100.33.50:8080"
echo $http_proxy "http_proxy"
echo $https_proxy "http_proxy"
tar xzf hadoop-2.7.1.tar.gz hadoop-2.7.1
sudo rm -rf /usr/local/hadoop
sudo mv hadoop-2.7.1 /usr/local/hadoop
sudo apt-get update  
sudo apt-get -y install openjdk-8-jdk  
sudo apt-get -y install openjdk-8-jdk  #add this extra step, because it behind the company proxy, the first step will has problem of package size mismatching, which may be caused by company security policy, rerun this command again, it will continue to download to install package.
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
 
#wget http://mirrors.sonic.net/apache/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz
 
sudo chown -R hduser:hadoop /usr/local/hadoop/
sudo chown -R vagrant:vagrant /home/hduser/.bashrc
echo '
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export HADOOP_HOME=/usr/local/hadoop
export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:$HADOOP_HOME/sbin
#export HADOOP_MAPRED_HOME=$HADOOP_HOME
#export HADOOP_COMMON_HOME=$HADOOP_HOME
#export HADOOP_HDFS_HOME=$HADOOP_HOME
#export YARN_HOME=$HADOOP_HOME
#export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
#export HADOOP_OPTS="-D java.library.path=$HADOOP_HOME/lib"
' >> /home/hduser/.bashrc
sudo chown -R hduser:hadoop /home/hduser/.bashrc

sudo sed -i 's/${JAVA_HOME}/\/usr\/lib\/jvm\/java-8-openjdk-amd64/g' /usr/local/hadoop/etc/hadoop/hadoop-env.sh


sudo rm -rf /usr/local/hadoop/hadoop_data/
sudo mkdir -p /usr/local/hadoop/hadoop_data/hdfs/namenode
sudo chown -R hduser:hadoop /usr/local/hadoop/


#export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
#into /usr/local/hadoop/etc/hadoop/hadoop-env.sh

#core-site;hdfs-site;yarn-site;mapred-site

# docker
#sudo apt-get install wget
#wget -qO- https://get.docker.com/ | sh
#sudo usermod -aG docker hduser

# setup docker proxy
#sudo mkdir -p /etc/systemd/system/docker.service.d
#sudo bash -c ' 
#echo "[Service]
#Environment="HTTP_PROXY=http://caa-proxybr.co.i.caa.ca:8080"
#Environment="HTTPS_PROXY=https://caa-proxybr.co.i.caa.ca:8080"
#" >> /etc/systemd/system/docker.service.d/http-proxy.conf
#'

#sudo systemctl daemon-reload
#sudo systemctl restart docker
