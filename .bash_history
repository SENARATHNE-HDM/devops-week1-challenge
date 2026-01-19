nmcli connection show
sudo nmcli connection modify "Wired connection 1" ipv4.dns 192.168.233.128
sudo nmcli connection modify "Wired connection 1" ipv4.ignore-auto-dns yes
sudo nmcli connection down "Wired connection 1"
sudo nmcli connection up "Wired connection 1"
cat /etc/resolv.conf
resolvectl status
sudo hostnamectl set-hostname client1.example.local
sudo reboot
sudo nano /etc/samba/smb.conf
sudo nano /etc/samba/smb.conf
sudo resolvectl dns ens33 192.168.233.128
sudo resolvectl domain ens33 example.local
sudo resolvectl dns ens33 192.168.233.128
sudo resolvectl domain ens33 example.local
resolvectl status
ping -c 2 google.com
ping -c 2 dc1.example.local
sudo apt update
client@client1:~$ sudo resolvectl dns ens33 192.168.233.128
sudo resolvectl domain ens33 example.local
[sudo] password for client: 
client@client1:~$ sudo resolvectl dns ens33 192.168.233.128
sudo resolvectl domain ens33 example.local
client@client1:~$ resolvectl status
Global
resolv.conf mode: stub
Link 2 (ens33)
Current DNS Server: 192.168.233.128
client@client1:~$ ping -c 2 google.com
PING google.com (142.250.77.46) 56(84) bytes of data.
64 bytes from bom07s26-in-f14.1e100.net (142.250.77.46): icmp_seq=1 ttl=128 time=88.3 ms
64 bytes from bom07s26-in-f14.1e100.net (142.250.77.46): icmp_seq=2 ttl=128 time=106 ms
--- google.com ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1004ms
rtt min/avg/max/mdev = 88.330/97.129/105.929/8.799 ms
client@client1:~$ ping -c 2 dc1.example.local
PING dc1.example.local (192.168.233.128) 56(84) bytes of data.
64 bytes from 192.168.233.128 (192.168.233.128): icmp_seq=1 ttl=64 time=3.29 ms
64 bytes from 192.168.233.128 (192.168.233.128): icmp_seq=2 ttl=64 time=1.10 ms
--- dc1.example.local ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1002ms
rtt min/avg/max/mdev = 1.102/2.195/3.288/1.093 ms
client@client1:~$ sudo apt update
Get:1 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
Hit:2 http://lk.archive.ubuntu.com/ubuntu jammy InRelease
Get:3 http://lk.archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
Get:4 http://security.ubuntu.com/ubuntu jammy-security/main amd64 DEP-11 Metadata [54.6 kB]
Get:5 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 DEP-11 Metadata [208 B]
Get:6 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 DEP-11 Metadata [125 kB]
Get:7 http://lk.archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
Get:8 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 DEP-11 Metadata [208 B]
Get:9 http://lk.archive.ubuntu.com/ubuntu jammy-updates/main amd64 DEP-11 Metadata [112 kB]
Get:10 http://lk.archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 DEP-11 Metadata [212 B]
Get:11 http://lk.archive.ubuntu.com/ubuntu jammy-updates/universe amd64 DEP-11 Metadata [360 kB]
Get:12 http://lk.archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 DEP-11 Metadata [940 B]
Get:13 http://lk.archive.ubuntu.com/ubuntu jammy-backports/main amd64 DEP-11 Metadata [7,320 B]
Get:14 http://lk.archive.ubuntu.com/ubuntu jammy-backports/restricted amd64 DEP-11 Metadata [212 B]
Get:15 http://lk.archive.ubuntu.com/ubuntu jammy-backports/universe amd64 DEP-11 Metadata [10.1 kB]
Get:16 http://lk.archive.ubuntu.com/ubuntu jammy-backports/multiverse amd64 DEP-11 Metadata [212 B]
Fetched 1,055 kB in 4s (280 kB/s)         
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
93 packages can be upgraded. Run 'apt list --upgradable' to see them.
client@client1:~$ 
sudo apt install -y realmd sssd sssd-tools adcli samba-common-bin oddjob oddjob-mkhomedir packagekit
realm discover example.local
sudo realm join example.local -U administrator
realm list
lsb_release -a
sudo apt update && sudo apt upgrade -y
sudo resolvectl dns ens33 192.168.233.128 8.8.8.8
sudo resolvectl domain ens33 example.local
sudo systemctl restart systemd-resolved
ping -c 2 google.com
ping -c 2 dc1.example.local
sudo systemctl stop systemd-resolved
sudo rm -f /etc/resolv.conf
sudo nano /etc/resolv.conf
sudo chattr +i /etc/resolv.conf
sudo systemctl restart NetworkManager
ping -c 2 dc1.example.local
ping -c 2 google.com
sudo systemctl restart NetworkManager
sudo apt update && sudo apt upgrade -y
sudo apt install -y apache2 php php-mysql php-gd php-xml php-bcmath php-mbstring php-ldap mariadb-server
sudo systemctl enable apache2 mariadb --now
sudo mysql_secure_installation
sudo systemctl status mariadb
wget https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.4-1+ubuntu22.04_all.deb
sudo dpkg -i zabbix-release_6.4-1+ubuntu22.04_all.deb
sudo apt update
sudo apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-agent -y
sudo mysql -u root -p
zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | sudo mysql -u zabbix -p zabbix
ls /usr/share/zabbix-sql-scripts/mysql/
zabbix_server --version
/usr/share/zabbix-sql-scripts/mysql/server.sql.gz
sudo apt install -y zabbix-sql-scripts
ls /usr/share/zabbix-sql-scripts/mysql/
zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | sudo mysql -u zabbix -p zabbix
sudo nano /etc/zabbix/zabbix_server.conf
sudo systemctl restart zabbix-server
sudo systemctl status zabbix-server
sudo nano /etc/zabbix/zabbix_server.conf
sudo journalctl -xeu zabbix-server.service
hostname
sudo nano/etc/hosts
sudo nano /etc/hosts
sudo echo "hostname ok"
sudo systemctl stop zabbix-server zabbix-agent apache2
sudo mysql
zcat /usr/share/zabbix-sql-scripts/mysql/server.sql.gz | mysql -u zabbix -p zabbix
sudo mysql
clear
sudo mysql
clear
sudo mysql
sudo apt update
sudo apt install nginx -y
sudo kill -9 4234
sudo rm /var/lib/apt/lists/lock
sudo dpkg --configure -a
sudo apt update
sudo apt install nginx -y
systemctl sttatus nginx
systemctl ttatus nginx
systemctl status nginx
sudo ss -lptn 'sport = :80'
sudo systemctl stop apache2
sudo systemctl disable apache2
sudo systemctl start nginx
systemctl nginx status
systemctl status nginx
cd /var/www/html
ls
sudo mv index.html index.html.old
ls
cd ..
cd
sudo systemctl restart nginx
sudo nano /var/www/html/index.nginx-debian.html
sudo shutdown now
whoami 
ifconfig
ipaddr
ip addr
sudo apt update
sudo apt install openssh-server -y
sudo systemctl start ssh
sudo systemctl enable ssh
sudo systemctl status ssh
