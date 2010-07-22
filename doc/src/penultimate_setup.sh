#! /bin/bash

#
# Copyright 2006-2010 Holger Levsen 
# released under the GPLv=2
#

# country=UNIX
LANG=C

# distribution we are using
DISTRO=squeeze

# hardcode mirror to use
MIRROR=mirror.cc.columbia.edu

# which arch are we running on? (needed for sources.list)
ARCH=`dpkg --print-architecture`

# overwrite existing sources.lists, provide sensible defaults
echo "#deb http://$MIRROR/debian/ $DISTRO main contrib non-free
#deb http://security.debian.org/ $DISTRO/updates main contrib non-free

deb http://snapshot.debian.org/archive/debian/20100704T132725Z/ squeeze main

deb http://db.debconf.org/dc-admin/archive/ $DISTRO/$ARCH/
deb http://db.debconf.org/dc-admin/archive/ $DISTRO/all/
" > /etc/apt/sources.list

# begin upgrade to squeeze snapshot
export DEBCONF_FRONTEND=noninteractive  
export DEBIAN_FRONTEND=noninteractive 
apt-get update 
apt-get -y install apt
apt-get -y install linux-image-2.6.32-5-686-bigmem

# grab next stage
wget http://svn.debian.org/viewsvn/debconf-video/fai-config/doc/src/final_setup.sh 
mv final_settup.sh /root
