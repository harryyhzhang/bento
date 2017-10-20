ssh-keyscan -H hadoopslave1 > .ssh/known_hosts
ssh-keyscan -H hadoopslave2 >> .ssh/known_hosts
ssh-keyscan -H hadoopslave3 >> .ssh/known_hosts 
ssh-keyscan -H hadoopmaster >> .ssh/known_hosts
