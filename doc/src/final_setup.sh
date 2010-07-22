#! /bin/bash

#
# Copyright 2006-2010 Holger Levsen 
# released under the GPLv=2
#

# country=UNIX
LANG=C

# install fai clients and recommended stuff
export DEBCONF_FRONTEND=noninteractive  
export DEBIAN_FRONTEND=noninteractive 

echo "y" | apt-get -y upgrade 
echo "y" | apt-get -y dist-upgrade
apt-get -y install fai-client subversion 

# configure fai
echo 'FAI_CONFIG_SRC="svn://svn.debian.org/svn/debconf-video/fai-config"' >> /etc/fai/fai.conf  # crude hack - last entry has precedence :)

# run first softupdate, after that you can use /usr/local/sbin/softupdate 
fai -N softupdate

# display errors
echo "cat /var/log/fai/last/error.log:"
cat /var/log/fai/last/error.log

# done
echo
echo "'fai -N softupdate' done."
echo
