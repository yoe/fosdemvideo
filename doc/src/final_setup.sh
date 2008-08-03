#! /bin/bash

# Copyright 2006-2008 Holger Levsen 
# released under the GPLv=2
#
# this is a stripped down version :)

apt-get update
DEBCONF_FRONTEND=noninteractive  DEBIAN_FRONTEND=noninteractive apt-get install vim fai-client subversion 

echo 'FAI_CONFIG_SRC="svn://svn.debian.org/svn/debconf-video/fai-config"' >> /etc/fai/fai.conf  # crude hack - last entry has precedence :)

fai -N softupdate

echo "cat /var/log/fai/current/error.log:"
cat /var/log/fai/current/error.log

echo
echo "'fai -N softupdate' done."
echo

