#!/bin/bash
cd /tmp

if ! which lynx > /dev/null; then sudo apt-get install lynx -y; fi

if [ "$(getconf LONG_BIT)" == "64" ]; then arch=amd64; else arch=i386; fi

function download() {
   wget $(lynx -dump -listonly -dont-wrap-pre $kernelURL | grep "$1" | grep "$2" | grep "$arch" | cut -d ' ' -f 4)
}

# Kernel URL
#read -p "Do you want the latest RC?" rc
#case "$rc" in
#   y* | Y*) kernelURL=$(lynx -dump -nonumbers http://kernel.ubuntu.com/~kernel-ppa/mainline/ | tail -1) ;;
#   n* | N*) kernelURL=$(lynx -dump -nonumbers http://kernel.ubuntu.com/~kernel-ppa/mainline/ | grep -v rc | tail -1) ;;
#   *) exit ;;
#esac

kernelURL=$(lynx -dump -nonumbers http://kernel.ubuntu.com/~kernel-ppa/mainline/ | grep -v rc | tail -1)
 
#read -p "Do you want the lowlatency kernel?" lowlatency
#case "$lowlatency" in
#   y* | Y*) lowlatency=1 ;;
#   n* | n*) lowlatency=0 ;;
#   *) exit ;;
#esac

lowlatency=0

# Download Kernel
if [ "$lowlatency" == "0" ]; then
   echo "Downloading the latest generic kernel."
   download generic header
   download generic image
elif [ "$lowlatency" == "1" ]; then
   echo "Downloading the latest lowlatency kernel."
   download lowlatency header
   download lowlatency image
fi

# Shared Kernel Header
wget $(lynx -dump -listonly -dont-wrap-pre $kernelURL | grep all | cut -d ' ' -f 4)

# Install Kernel
echo "Installing Linux Kernel"
sudo dpkg -i linux*.deb
echo "Done. You may now reboot."
