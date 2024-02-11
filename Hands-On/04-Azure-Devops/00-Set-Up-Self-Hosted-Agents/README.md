# Self Hosted Agent Pool

cd ~
git clone https://github.com/atingupta2005/docker-ubuntu-sshd
cd docker-ubuntu-sshd
docker build -t my-ubuntu-sshd:latest .
docker run -itd -p 2201:22 --name ubuntu_ssh_01 -e SSH_USERNAME=u01 -e PASSWORD=p my-ubuntu-sshd:latest
docker run -itd -p 2202:22 --name ubuntu_ssh_02 -e SSH_USERNAME=u01 -e PASSWORD=p my-ubuntu-sshd:latest
docker run -itd -p 2203:22 --name ubuntu_ssh_03 -e SSH_USERNAME=u01 -e PASSWORD=p my-ubuntu-sshd:latest
docker run -itd -p 2204:22 --name ubuntu_ssh_04 -e SSH_USERNAME=u01 -e PASSWORD=p my-ubuntu-sshd:latest
docker run -itd -p 2205:22 --name ubuntu_ssh_05 -e SSH_USERNAME=u01 -e PASSWORD=p my-ubuntu-sshd:latest

nano docker-container-commands.sh
docker cp docker-container-commands.sh ubuntu_ssh_01:/tmp/docker-container-commands.sh
docker cp docker-container-commands.sh ubuntu_ssh_02:/tmp/docker-container-commands.sh
docker cp docker-container-commands.sh ubuntu_ssh_03:/tmp/docker-container-commands.sh
docker cp docker-container-commands.sh ubuntu_ssh_04:/tmp/docker-container-commands.sh
docker cp docker-container-commands.sh ubuntu_ssh_05:/tmp/docker-container-commands.sh

docker exec ubuntu_ssh_01 sh /tmp/docker-container-commands.sh
docker exec ubuntu_ssh_02 sh /tmp/docker-container-commands.sh
docker exec ubuntu_ssh_03 sh /tmp/docker-container-commands.sh
docker exec ubuntu_ssh_04 sh /tmp/docker-container-commands.sh
docker exec ubuntu_ssh_05 sh /tmp/docker-container-commands.sh

# Password is root

ssh -p 2201 root@localhost
ssh -p 2202 root@localhost
ssh -p 2203 root@localhost
ssh -p 2204 root@localhost
ssh -p 2205 root@localhost

mkdir -p ~/myagent && cd ~/myagent

wget https://vstsagentpackage.azureedge.net/agent/3.232.3/vsts-agent-linux-x64-3.232.3.tar.gz

tar -xvf vsts-agent-linux-x64-3.232.3.tar.gz

./config.sh --unattended --url https://dev.azure.com/test10377/ --auth pat --token pff2sin7ozrhmsbohbwmgbqoygxfeemrbgkocqkxpedylrf4lpeq --pool default --acceptTeeEula

nohup ./run.sh &
