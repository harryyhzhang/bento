REM  if not exist "lib" mkdir lib
REM .\bin\wget.exe http://mirrors.sonic.net/apache/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz -O lib\hadoop-2.7.1.tar.gz

vagrant.exe up 

scp -P 2222 -i .ssh\id_rsa provisioning2\ipsetup.sh vagrant@localhost:~/ipsetup.sh
ssh -p 2222 -i .ssh\id_rsa  vagrant@localhost 'chmod +x ipsetup.sh'
ssh -p 2222 -i .ssh\id_rsa  vagrant@localhost '~/ipsetup.sh'
scp -P 2222 -i .ssh\id_rsa provisioning2\master.sh vagrant@localhost:~/master.sh
ssh -p 2222 -i .ssh\id_rsa  vagrant@localhost 'chmod +x master.sh'
ssh -p 2222 -i .ssh\id_rsa  vagrant@localhost '~/master.sh'

scp -P 2222 -i .ssh\id_rsa config\app1\core-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/core-site.xml
scp -P 2222 -i .ssh\id_rsa config\app1\hdfs-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/hdfs-site.xml
scp -P 2222 -i .ssh\id_rsa config\app1\mapred-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/mapred-site.xml
scp -P 2222 -i .ssh\id_rsa config\app1\yarn-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/yarn-site.xml

scp -P 2223 -i .ssh\id_rsa provisioning2\ipsetup.sh vagrant@localhost:~/ipsetup.sh
ssh -p 2223 -i .ssh\id_rsa  vagrant@localhost 'chmod +x ipsetup.sh'
ssh -p 2223 -i .ssh\id_rsa  vagrant@localhost '~/ipsetup.sh'
scp -P 2223 -i .ssh\id_rsa provisioning2\slave.sh vagrant@localhost:~/slave.sh
ssh -p 2223 -i .ssh\id_rsa  vagrant@localhost 'chmod +x slave.sh'
ssh -p 2223 -i .ssh\id_rsa  vagrant@localhost '~/slave.sh'


scp -P 2223 -i .ssh\id_rsa config\salve\core-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/core-site.xml
scp -P 2223 -i .ssh\id_rsa config\salve\hdfs-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/hdfs-site.xml
scp -P 2223 -i .ssh\id_rsa config\salve\mapred-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/mapred-site.xml
scp -P 2223 -i .ssh\id_rsa config\salve\yarn-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/yarn-site.xml


scp -P 2224 -i .ssh\id_rsa provisioning2\ipsetup.sh vagrant@localhost:~/ipsetup.sh
ssh -p 2224 -i .ssh\id_rsa  vagrant@localhost 'chmod +x ipsetup.sh'
ssh -p 2224 -i .ssh\id_rsa  vagrant@localhost '~/ipsetup.sh'
scp -P 2224 -i .ssh\id_rsa provisioning2\slave.sh vagrant@localhost:~/slave.sh
ssh -p 2224 -i .ssh\id_rsa  vagrant@localhost 'chmod +x slave.sh'
ssh -p 2224 -i .ssh\id_rsa  vagrant@localhost '~/slave.sh'


scp -P 2224 -i .ssh\id_rsa config\salve\core-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/core-site.xml
scp -P 2224 -i .ssh\id_rsa config\salve\hdfs-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/hdfs-site.xml
scp -P 2224 -i .ssh\id_rsa config\salve\mapred-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/mapred-site.xml
scp -P 2224 -i .ssh\id_rsa config\salve\yarn-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/yarn-site.xml
 

scp -P 2225 -i .ssh\id_rsa provisioning2\ipsetup.sh vagrant@localhost:~/ipsetup.sh
ssh -p 2225 -i .ssh\id_rsa  vagrant@localhost 'chmod +x ipsetup.sh'
ssh -p 2225 -i .ssh\id_rsa  vagrant@localhost '~/ipsetup.sh'
scp -P 2225 -i .ssh\id_rsa provisioning2\slave.sh vagrant@localhost:~/slave.sh
ssh -p 2225 -i .ssh\id_rsa  vagrant@localhost 'chmod +x slave.sh'
ssh -p 2225 -i .ssh\id_rsa  vagrant@localhost '~/slave.sh'


scp -P 2225 -i .ssh\id_rsa config\salve\core-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/core-site.xml
scp -P 2225 -i .ssh\id_rsa config\salve\hdfs-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/hdfs-site.xml
scp -P 2225 -i .ssh\id_rsa config\salve\mapred-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/mapred-site.xml
scp -P 2225 -i .ssh\id_rsa config\salve\yarn-site.xml hduser@localhost:/usr/local/hadoop/etc/hadoop/yarn-site.xml
 
REM ssh -p 2222 -i .ssh\id_rsa  hduser@localhost '/usr/local/hadoop/bin/hadoop namenode -format' 
REM ssh -p 2222 -i .ssh\id_rsa  hduser@localhost '/usr/local/hadoop/sbin/start-all.sh' 
 
REM scp -P 2222 -i .ssh\id_rsa provisioning2\runcalculate.sh hduser@localhost:~/runcalculate.sh
REM ssh -p 2222 -i .ssh\id_rsa  hduser@localhost 'chmod +x runcalculate.sh'
REM ssh -p 2222 -i .ssh\id_rsa  hduser@localhost 'sh -c "~/runcalculate.sh"'

REM if not exist "out" mkdir out
REM scp -P 2222 -i .ssh\id_rsa hduser@localhost:~/out ./out


