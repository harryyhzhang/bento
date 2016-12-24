cd /d %~dp0
.\bin\packer_0.12.1_windows_amd64\packer.exe build ubuntu-16.10-amd64.json
cd .\vagrant
vagrant up