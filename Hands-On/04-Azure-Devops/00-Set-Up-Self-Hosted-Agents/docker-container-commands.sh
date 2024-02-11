sudo apt update
sudo apt install -y build-essential gcc g++ make cmake

sudo apt install -y git
sudo apt install -y ant
sudo apt install -y maven
sudo apt install -y default-jdk
sudo apt install gnupg ca-certificates -y

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

sudo apt install apt-transport-https -y

echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list

sudo apt update

sudo apt install -y msbuild -y

sudo apt install mono-complete -y

sudo apt install nuget -y

sudo apt install -y python3 python3-venv

sudo apt install -y python3-pip


sudo apt-get update

sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

