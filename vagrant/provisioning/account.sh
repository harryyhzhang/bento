sudo addgroup hadoop
sudo adduser --ingroup hadoop hduser --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "hduser:hduser" | sudo chpasswd

sudo adduser hduser sudo
 
cat .ssh/id_rsa.pub >> .ssh/authorized_keys
sudo cp -R ./.ss* ../hduser/
cd ../hduser/

chmod 600 .ssh/id_rsa
cat .ssh/id_rsa.pub >> .ssh/authorized_keys
 
 
ssh-keyscan -H 127.0.0.1 >> .ssh/known_hosts 
ssh-keyscan -H 0.0.0.0 >> .ssh/known_hosts
ssh-keyscan -H hadoopmaster >> .ssh/known_hosts


sudo chown -R hduser:hadoop .ssh
chmod 700 .ssh