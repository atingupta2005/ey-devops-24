# Self Hosted Agent Pool
```
#cd ~
#curl -fsSL https://get.docker.com -o install-docker.sh
#sudo sh install-docker.sh
```

```
#sudo usermod -aG docker $USER
#exit
```

```
cd ~
git clone https://github.com/atingupta2005/docker-ubuntu-sshd
cd docker-ubuntu-sshd
```

```
USER_SUFFIX=$(echo "$USER" | cut -c 2-5)
echo $USER_SUFFIX
```

```
docker build -t my-ubuntu-sshd:latest .
docker run -itd -p 22$USER_SUFFIX:22 --name ubuntu_ssh_01_$USER_SUFFIX -e SSH_USERNAME=u01 -e PASSWORD=p my-ubuntu-sshd:latest
```

```
wget https://raw.githubusercontent.com/atingupta2005/ey-devops-24/main/Hands-On/04-Azure-Devops/00-Set-Up-Self-Hosted-Agents/docker-container-commands.sh
```

```
docker cp docker-container-commands.sh ubuntu_ssh_01_$USER_SUFFIX:/tmp/docker-container-commands.sh
```

```
docker exec ubuntu_ssh_01_$USER_SUFFIX sh /tmp/docker-container-commands.sh
# Password is p
```

```
ssh -p 22$USER_SUFFIX u01@localhost # Password is p
```

```
mkdir -p ~/myagent && cd ~/myagent;wget https://vstsagentpackage.azureedge.net/agent/3.232.3/vsts-agent-linux-x64-3.232.3.tar.gz;tar -xvf vsts-agent-linux-x64-3.232.3.tar.gz;./config.sh --unattended --url https://dev.azure.com/test10377 --auth pat --token ea4vizoxah5j7mjjompza7tet2nngtppvjbanxfziez7ywbbqrua --pool default --acceptTeeEula;nohup ./run.sh &
```

```
exit
```

