# Self Hosted Agent Pool
## Install Oracle Java
```
cd
sudo apt update
sudo apt install default-jdk
java -version
```

```
sudo apt install -y maven
sudo apt install -y git
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
```

## Install Agent
### Generate PAT from Azure DevOps. Below is sample PAT:
```
omvjapbbld3lohkyb5lsq36az5sn5zwb3eh2j4jyve2kbu3c7zsa
```

### Install Agent
```
mkdir ~/myagent && cd ~/myagent
wget https://vstsagentpackage.azureedge.net/agent/2.204.0/vsts-agent-linux-x64-2.204.0.tar.gz
tar zxvf vsts-agent-linux-x64-2.204.0.tar.gz
rm -rf zxvf vsts-agent-linux-x64-2.204.0.tar.gz
```

### Configure Agent
```
./config.sh
```

### Run Agent
```
./run.sh
```
