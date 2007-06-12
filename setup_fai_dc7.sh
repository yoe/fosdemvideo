#! /bin/bash

# Copyright 2006-2007 Holger Levsen 
# released under the GPLv=2
#


cat > /etc/apt/sources.list <<-EOF
deb http://ftp.debian.org/debian/ etch main contrib
deb-src http://ftp.debian.org/debian/ etch main contrib

deb http://security.debian.org/ etch/updates main contrib
deb-src http://security.debian.org/ etch/updates main contrib

deb http://cmburns.debconf.org/dc-admin/archive/ etch/i386/
deb http://cmburns.debconf.org/dc-admin/archive/ etch/all/

EOF

cat > /etc/resolv.conf <<-EOF
search internal.dc7.debconf.org debconf.org
nameserver 172.16.0.1
EOF

cat > /etc/nsswitch.conf <<-EOF
# /etc/nsswitch.conf
#

passwd:         db compat
group:          compat db
shadow:         db compat

hosts:          files dns
networks:       files

protocols:      db files
services:       db files
ethers:         db files
rpc:            db files

netgroup:       nis
EOF


echo "run 'ud-host -h cmburns' on cmburns and add the host"
echo ""
cat /etc/ssh/ssh_host_*.pub
read


ssh-keygen -t rsa -b 1024
cat /root/.ssh/id_rsa.pub
echo ""
echo "paste this into cmburns"
read

aptitude update

DEBCONF_FRONTEND=noninteractive  DEBIAN_FRONTEND=noninteractive aptitude install ssh vim fai-client subversion userdir-ldap

aptitude upgrade

# workaround Ganneffs lazyness
sed -i 's/PYTHON_VER="2\.3"/PYTHON_VER="2\.4"/' /var/lib/dpkg/info/userdir-ldap.postinst
dpkg --configure -a

sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/' /etc/ssh/sshd_config

ssh -o "StrictHostKeyChecking no" db
ud-replicate

echo 'FAI_CONFIG_SRC="svn://svn.debian.org/svn/debconf-video/trunk/fai-config"' >> /etc/fai/fai.conf 

echo
echo "now run 'fai -N softupdate'"
echo

