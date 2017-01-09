echo "### $1"
sudo sh -c '(echo "Acquire::http::proxy \"http://10.100.33.50:8080/\";";  echo "Acquire::ftp::proxy \"ftp://10.100.33.50:8080/\";";  echo "Acquire::https::proxy \"https://10.100.33.50:8080/\";") >  /etc/apt/apt.conf'
# although proxy was set in etc/apt/apt.conf, but for some packages which is downloaded through http, it still need to setup proxy envrionment variable
export http_proxy="http://10.100.33.50:8080"
export https_proxy="http://10.100.33.50:8080"

sudo apt-get update
sudo apt-get -y install default-jdk
