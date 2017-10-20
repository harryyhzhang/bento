REM  if not exist "lib" mkdir lib
REM .\bin\wget.exe http://mirrors.sonic.net/apache/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz -O lib\hadoop-2.7.1.tar.gz

 vagrant.exe up 
 REM vagrant reload --provision

scp -P 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning2\ipsetup.sh vagrant@127.0.0.1:~/ipsetup.sh   
ssh -p 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 'chmod +x ipsetup.sh'  
ssh -p 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 '~/ipsetup.sh' 


scp -P 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning2\sshmaster.sh hduser@127.0.0.1:~/sshmaster.sh  
ssh -p 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa  hduser@127.0.0.1 'chmod +x sshmaster.sh'  
ssh -p 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa  hduser@127.0.0.1 '~/sshmaster.sh'    

REM master software

scp -P 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning/initial-setup.sh vagrant@127.0.0.1:~/initial-setup.sh  
ssh -p 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 'chmod +x initial-setup.sh'  
ssh -p 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 '~/initial-setup.sh'  


scp -P 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning2\master.sh vagrant@127.0.0.1:~/master.sh   
ssh -p 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 'chmod +x master.sh'   
ssh -p 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 '~/master.sh'  

REM master configuration
scp -P 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\app1\core-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/core-site.xml   
scp -P 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\app1\hdfs-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/hdfs-site.xml
scp -P 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\app1\mapred-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/mapred-site.xml
scp -P 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\app1\yarn-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/yarn-site.xml
 
 

REM salve1
scp -P 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning2\ipsetup.sh vagrant@127.0.0.1:~/ipsetup.sh
ssh -p 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 'chmod +x ipsetup.sh'
ssh -p 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 '~/ipsetup.sh'

scp -P 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning2\slave.sh vagrant@127.0.0.1:~/slave.sh
ssh -p 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 'chmod +x slave.sh'
ssh -p 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 '~/slave.sh'

REM scp -P 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning2\sshslave.sh hduser@127.0.0.1:~/sshslave.sh
REM ssh -p 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa  hduser@127.0.0.1 'chmod +x sshslave.sh'
REM ssh -p 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa  hduser@127.0.0.1 '~/sshslave.sh' 
 
scp -P 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning/initial-setup.sh vagrant@127.0.0.1:~/initial-setup.sh  
ssh -p 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 'chmod +x initial-setup.sh'  
ssh -p 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 '~/initial-setup.sh'  

scp -P 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\salve\core-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/core-site.xml
scp -P 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\salve\hdfs-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/hdfs-site.xml
scp -P 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\salve\mapred-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/mapred-site.xml
scp -P 2223 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\salve\yarn-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/yarn-site.xml


scp -P 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning2\ipsetup.sh vagrant@127.0.0.1:~/ipsetup.sh
ssh -p 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 'chmod +x ipsetup.sh'
ssh -p 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 '~/ipsetup.sh'

scp -P 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning2\slave.sh vagrant@127.0.0.1:~/slave.sh
ssh -p 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 'chmod +x slave.sh'
ssh -p 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 '~/slave.sh'

REM scp -P 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning2\sshslave.sh hduser@127.0.0.1:~/sshslave.sh
REM ssh -p 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa  hduser@127.0.0.1 'chmod +x sshslave.sh'
REM ssh -p 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa  hduser@127.0.0.1 '~/sshslave.sh' 


scp -P 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning/initial-setup.sh vagrant@127.0.0.1:~/initial-setup.sh  
ssh -p 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 'chmod +x initial-setup.sh'  
ssh -p 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 '~/initial-setup.sh' 

scp -P 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\salve\core-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/core-site.xml
scp -P 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\salve\hdfs-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/hdfs-site.xml
scp -P 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\salve\mapred-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/mapred-site.xml
scp -P 2224 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\salve\yarn-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/yarn-site.xml
 

scp -P 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning2\ipsetup.sh vagrant@127.0.0.1:~/ipsetup.sh
ssh -p 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 'chmod +x ipsetup.sh'
ssh -p 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 '~/ipsetup.sh'
scp -P 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning2\slave.sh vagrant@127.0.0.1:~/slave.sh
ssh -p 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 'chmod +x slave.sh'
ssh -p 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 '~/slave.sh'

REM scp -P 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning2\sshslave.sh hduser@127.0.0.1:~/sshslave.sh
REM ssh -p 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa  hduser@127.0.0.1 'chmod +x sshslave.sh'
REM ssh -p 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa  hduser@127.0.0.1 '~/sshslave.sh' 


scp -P 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning/initial-setup.sh vagrant@127.0.0.1:~/initial-setup.sh  
ssh -p 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 'chmod +x initial-setup.sh'  
ssh -p 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa  vagrant@127.0.0.1 '~/initial-setup.sh' 

scp -P 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\salve\core-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/core-site.xml
scp -P 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\salve\hdfs-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/hdfs-site.xml
scp -P 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\salve\mapred-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/mapred-site.xml
scp -P 2225 -o StrictHostKeyChecking=no -i .ssh\id_rsa config\salve\yarn-site.xml hduser@127.0.0.1:/usr/local/hadoop/etc/hadoop/yarn-site.xml
 
 
 ssh -p 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa  hduser@127.0.0.1 '/usr/local/hadoop/bin/hadoop namenode -format' 
 ssh -p 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa  hduser@127.0.0.1 '/usr/local/hadoop/sbin/start-all.sh' 
 
 scp -P 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa provisioning2\runcalculate.sh hduser@127.0.0.1:~/runcalculate.sh
 ssh -p 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa  hduser@127.0.0.1 'chmod +x runcalculate.sh'
 ssh -p 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa  hduser@127.0.0.1 'sh -c "~/runcalculate.sh"'

 if not exist "out" mkdir out
 scp -P 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa hduser@127.0.0.1:~/out/* ./out/
 
 ssh -p 2222 -o StrictHostKeyChecking=no -i .ssh\id_rsa  hduser@127.0.0.1 'cat ~/out/part*'
