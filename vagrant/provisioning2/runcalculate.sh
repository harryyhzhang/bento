
mkdir -p ~/input
mkdir -p ~/out
rm -rf ~/out/*
cp /usr/local/hadoop/etc/hadoop/*.xml ~/input/
 
 
hadoop dfs -mkdir /usr
hadoop dfs -mkdir /usr/in
hadoop dfs -put ~/input/* /usr/in
hadoop jar /usr/local/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar  grep /usr/in /usr/output 'dfs[a-z]+'


hadoop dfs -get /usr/output/* ~/out/
 

