Go Workspace Installer
===

This `Vagrantfile` is used for create a workspace and environment for golang development.

## Install

1. do download the 1.10.1 version of go

`sh download_golang.sh`

2. do vagrant up

`vagrant up`

Ok, now connect the virtual machine, and everything you need for golang development is installed ready for you!

3. connect the guest machine

`vagrant ssh`

4. Environment

```none
GOROOT=/usr/local/go
GOPATH=/home/vagrant/go_workspace
```

## Notice

1. We're using the go 1.10.1 version, which is currently newest, but time passes, it'll finally be an old version.

So, probably you need to edit download_golang.sh and install_golang.sh for this reason.

2. By default, download_golang.sh script will download from official website.

But if you're behind the `GTW`, maybe you need a mirror or private place to download the go installer file.

I provide a link which is able for you to download, and the speed is ok.

**THIS website I provide base on network which is charged via network traffic, and it is not cheap. So, if you can, PLEASE use the official website, and save more bandwidth to those people who really need it, THANKS.**