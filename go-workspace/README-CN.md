Go 语言工作环境一键部署脚本
===

`Vagrantfile` 用于一键创建 Go 语言环境和工作目录一键安装脚本.

## 安装

1. 下载 Go 语言环境, 默认为 1.10.1 版本

`sh download_golang.sh`

2. 启动环境

`vagrant up`

好, 启动好后, 在当前目录链接虚拟机, 一切环境都已经设置好了.

3. 链接虚拟机

`vagrant ssh`

4. 环境

```none
GOROOT=/usr/local/go
GOPATH=/home/vagrant/go_workspace
```

## 注意

1. 我们使用的是 go 1.10.1 版本, 当前是最新稳定版本. 但是随着时间推移, 难免这个版本将变成老旧版本.

所以, 可能因为这个原因你需要编辑 download_golang.sh 和 install_golang.sh 脚本.

2. 默认情况下, download_golang.sh 脚本将使用官方下载地址.

但是如果你所在区域无法访问官方地址, 那么你可能需要一个镜像来获取安装包.

我个人提供了速度还可以的下载地址, 方便使用.

**由于希望保证速度, 这个下载地址是个人通过基于流量收费的 CDN 存储的, 所以如果可以尽量使用官方地址吧, 把资源留给真正需要的朋友们.**