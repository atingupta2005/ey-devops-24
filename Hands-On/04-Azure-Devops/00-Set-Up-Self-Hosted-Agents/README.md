# Self Hosted Agent Pool
```
cd ~
curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh
sudo usermod -aG docker $USER
cd ~
git clone https://github.com/atingupta2005/docker-ubuntu-sshd
cd docker-ubuntu-sshd
docker build -t my-ubuntu-sshd:latest .
docker run -itd -p 2201:22 --name ubuntu_ssh_01 -e SSH_USERNAME=u01 -e PASSWORD=p my-ubuntu-sshd:latest
docker run -itd -p 2202:22 --name ubuntu_ssh_02 -e SSH_USERNAME=u01 -e PASSWORD=p my-ubuntu-sshd:latest
docker run -itd -p 2203:22 --name ubuntu_ssh_03 -e SSH_USERNAME=u01 -e PASSWORD=p my-ubuntu-sshd:latest
docker run -itd -p 2204:22 --name ubuntu_ssh_04 -e SSH_USERNAME=u01 -e PASSWORD=p my-ubuntu-sshd:latest
docker run -itd -p 2205:22 --name ubuntu_ssh_05 -e SSH_USERNAME=u01 -e PASSWORD=p my-ubuntu-sshd:latest

wget https://raw.githubusercontent.com/atingupta2005/ey-devops-24/main/Hands-On/04-Azure-Devops/00-Set-Up-Self-Hosted-Agents/docker-container-commands.sh
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

# Password is p

ssh -p 2201 u01@localhost # Password is p

mkdir -p ~/myagent && cd ~/myagent;wget https://vstsagentpackage.azureedge.net/agent/3.232.3/vsts-agent-linux-x64-3.232.3.tar.gz;tar -xvf vsts-agent-linux-x64-3.232.3.tar.gz;./config.sh --unattended --url https://dev.azure.com/test10377 --auth pat --token ea4vizoxah5j7mjjompza7tet2nngtppvjbanxfziez7ywbbqrua --pool default --acceptTeeEula;nohup ./run.sh &

ssh -p 2202 u01@localhost # Password is p

mkdir -p ~/myagent && cd ~/myagent;wget https://vstsagentpackage.azureedge.net/agent/3.232.3/vsts-agent-linux-x64-3.232.3.tar.gz;tar -xvf vsts-agent-linux-x64-3.232.3.tar.gz;./config.sh --unattended --url https://dev.azure.com/test10377 --auth pat --token ea4vizoxah5j7mjjompza7tet2nngtppvjbanxfziez7ywbbqrua --pool default --acceptTeeEula;nohup ./run.sh &

ssh -p 2203 u01@localhost # Password is p



ssh -p 2204 u01@localhost # Password is p



ssh -p 2205 u01@localhost # Password is p

