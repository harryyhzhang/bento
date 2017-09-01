ssh-keyscan -H hadoopslave1 > .ssh/known_hosts
ssh-keyscan -H hadoopslave2 >> .ssh/known_hosts
ssh-keyscan -H hadoopslave3 >> .ssh/known_hosts 
ssh-keyscan -H hadoopmaster >> .ssh/known_hosts
ssh-keyscan -H 127.0.0.1 >> .ssh/known_hosts    #hostname is case sensitive
ssh-keyscan -H 0.0.0.0 >> .ssh/known_hosts