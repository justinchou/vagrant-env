#!/bin/bash

GOFILE=go1.10.1.linux-amd64.tar.gz
WORKSPACE=go_workspace

echo ""
echo "1. install deps: Git, CMake..."
sudo yum install -y curl curl-devel expat expat-devel gettext gettext-devel openssl openssl-devel zlib zlib-devel git-core
sudo yum install -y vim make cmake gcc gcc-c++ net-tools


echo ""
echo "2. install golang..."
sudo rm -rf /usr/local/go /usr/local/bin/go
sudo tar zxf /vagrant/${GOFILE} -C /usr/local/
sudo chmod +x /usr/local/go/bin/go*


echo ""
echo "3. do vagrant user config..."
USERHOME='/home/vagrant'
sudo cd ${USERHOME}

echo "3.1 create folders ~/${WORKSPACE}"
sudo mkdir -p ${USERHOME}/${WORKSPACE}/{bin,src,pkg}

echo "3.2 configure PATH and GOROOT & GOPATH..."
sudo echo "export PATH=${PATH}:/usr/local/go/bin:~/${WORKSPACE}/bin" >> ${USERHOME}/.bash_profile
sudo echo "export GOROOT=/usr/local/go" >> ${USERHOME}/.bash_profile
sudo echo "export GOPATH=~/${WORKSPACE}" >> ${USERHOME}/.bash_profile

echo "3.3 auth folders to vagrant:vagrant owner"
sudo chown -R vagrant:vagrant ${USERHOME}/${WORKSPACE} /usr/local/


echo ""
echo "4. install godeps"
source ${USERHOME}/.bash_profile
echo GOROOT ${GOROOT} and GOPATH ${GOPATH}
sudo su - vagrant -c "go get -u github.com/golang/dep/cmd/dep"
