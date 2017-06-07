#!/bin/bash

[ -e /etc/init.d/lxc-halt ] || (
wget https://raw.githubusercontent.com/jazzl0ver/lxc-centos/master/lxc-halt -O /etc/init.d/lxc-halt
ln -s ../init.d/lxc-halt /etc/rc.d/rc0.d/S00lxc-halt
ln -s ../init.d/lxc-halt /etc/rc.d/rc6.d/S00lxc-reboot
)

[ -e /etc/init/lxc-sysinit.conf ] || (
wget https://raw.githubusercontent.com/jazzl0ver/lxc-centos/master/lxc-sysinit.conf -O /etc/init/lxc-sysinit.conf
)
[ -e /etc/init/power-status-changed.conf ] || (
wget https://raw.githubusercontent.com/jazzl0ver/lxc-centos/master/power-status-changed.conf -O /etc/init/power-status-changed.conf
)

grep -q lxc /etc/securetty || (
/bin/cp /etc/securetty /etc/securetty.bak
cat <<EOT >> /etc/securetty
# LXC (Linux Containers)
lxc/console
lxc/tty1
lxc/tty2
lxc/tty3
lxc/tty4
# For libvirt/Virtual Machine Monitor
pts/0
EOT
)
