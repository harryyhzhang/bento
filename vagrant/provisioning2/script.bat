scp -P 2222 -i .ssh\id_rsa provisioning2\ipsetup.sh vagrant@localhost:~/ipsetup.sh
ssh -p 2222 -i .ssh\id_rsa  vagrant@localhost 'chmod +x ipsetup.sh && ./ipsetup.sh'

scp -P 2223 -i .ssh\id_rsa provisioning2\ipsetup.sh vagrant@localhost:~/ipsetup.sh
ssh -p 2223 -i .ssh\id_rsa  vagrant@localhost 'chmod +x ipsetup.sh && ./ipsetup.sh'

scp -P 2224 -i .ssh\id_rsa provisioning2\ipsetup.sh vagrant@localhost:~/ipsetup.sh
ssh -p 2224 -i .ssh\id_rsa  vagrant@localhost 'chmod +x ipsetup.sh && ./ipsetup.sh'

scp -P 2225 -i .ssh\id_rsa provisioning2\ipsetup.sh vagrant@localhost:~/ipsetup.sh
ssh -p 2225 -i .ssh\id_rsa  vagrant@localhost 'chmod +x ipsetup.sh && ./ipsetup.sh'

