
mkdir -p ~/input
mkdir -p ~/out
rm -rf ~/out/*
cp /usr/local/hadoop/etc/hadoop/*.xml ~/input/
 
 
/usr/local/hadoop/bin/hadoop dfs -mkdir /usr
/usr/local/hadoop/bin/hadoop dfs -mkdir /usr/in
/usr/local/hadoop/bin/hadoop dfs -put ~/input/* /usr/in
/usr/local/hadoop/bin/hadoop jar /usr/local/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar  grep /usr/in /usr/output 'dfs[a-z]+'


/usr/local/hadoop/bin/hadoop dfs -get /usr/output/* ~/out/
 

