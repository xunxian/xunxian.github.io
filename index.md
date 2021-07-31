# 运维小站

## VMWare虚拟化

- RAID磁盘阵列
- 安装EXIS 6.0系统
- 使用VMware vSphere Client登录
- 点击【配置】【已获取许可的功能】【编辑】【输入许可秘钥】
- 点击【配置】【硬件的高级设置】【配置直通】【勾选带USB的选项】
- 【配置】【软件框下的虚拟机启动/关机】设置开机自启动

-----------

## Win 10 安装Office 2016增强版

 - 下载ISO文件：http://www.jb51.net/softs/566710.html
 - 下载完成后后使用7-zip等工具解压
 - 点击setup.exe安装
 - 安装完成后，随便新建一个word文件，系统提示需要激活，输入序列号【百度】，确定。
 - 下载KMS 2016激活工具，激活。

## JVM年轻代、老年代、持久代、GC
      http://blog.csdn.net/yrpting/article/details/52859721

## HTTPS网站证书不安全问题--未验证

      http://blog.csdn.net/lg_lin/article/details/49781975

## JVM性能监控与故障处理命令汇总
      http://www.cnblogs.com/Vince-blogs/p/8484917.html?utm_source=gold_browser_extension
# 初始化CentOS7
# 关闭SELinux
永久关闭：vi /etc/selinux/config，修改SELINUX=disabled，保存退出后重启服务器。
临时关闭：setenforce 0
临时开启：setenforce 1
查看状态：getenforce
# 修改时区
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
# 关闭Firewalld
systemctl stop firewalld && systemctl disable firewalld
# 使用阿里云yum源
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
yum install wget -y
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
yum clean all
yum makecache
# 安装基本组件
yum install -y net-tools wget lsof lrzsz ntpdate unzip gunizp -y
# 创建个人管理员用户
# 添加用户，给予wheel组成员管理员权限
1、useradd -m -c “My Admin user” fangsh
2、passwd fangsh
3、usermod -aG wheel fangsh
# 彻底删除用户
userdel -rf fangs
# 将用户从组里移除
id fangsh
gpasswd -d fangsh wheel
# 禁止root用户远程登录
sed -i 's/#PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
systemctl restart sshd
备注：可以使用sudo -i的方式登录，也可以使用su - root登录
vi /etc/passwd，将root账号的bash修改成nologin之后，sudo -i和su - root都无法登录
# 安装Nginx
sudo yum install gcc-c++
sudo yum install pcre pcre-devel
sudo yum install zlib zlib-devel
sudo yum install openssl openssl-devel
wget下载nginx源码包后解压编译
./configure --prefix=/opt/nginx
make && make install
配置开机自启脚本
![image](https://user-images.githubusercontent.com/16450152/127734864-80e15c69-904f-4d9d-a830-cfda518cb967.png)

