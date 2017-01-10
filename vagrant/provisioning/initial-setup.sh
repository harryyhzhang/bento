echo "### $1"
#sudo sh -c '(echo "Acquire::http::proxy \"http://10.100.33.50:8080/\";";  echo "Acquire::ftp::proxy \"ftp://10.100.33.50:8080/\";";  echo "Acquire::https::proxy \"https://10.100.33.50:8080/\";") >  /etc/apt/apt.conf'
# although proxy was set in etc/apt/apt.conf, but for some packages which is downloaded through http, it still need to setup proxy envrionment variable
#export http_proxy="http://10.100.33.50:8080"
#export https_proxy="http://10.100.33.50:8080"

sudo apt-get update
#sudo apt-get -y install default-jdk

sudo addgroup hadoop
sudo adduser --ingroup hadoop hduser --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "hduser:hduser" | sudo chpasswd
sudo adduser hduser sudo
sudo apt-get install openssh-server openssh-client -y

ssh-keygen -t rsa -P "" -f  .ssh/id_rsa 
cat  .ssh/id_rsa.pub >>  .ssh/authorize_keys 
sudo cp -R .ssh /home/hduser/ 
sudo chown -R hduser:hadoop .ssh
