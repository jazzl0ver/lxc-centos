# lxc-centos
Required files for CentOS 6 CT after conversion from OpenVZ to LXC

/etc/init.d/lxc-halt
/etc/rc.d/rc0.d/S00lxc-halt -> ../init.d/lxc-halt
/etc/rc.d/rc6.d/S00lxc-reboot -> ../init.d/lxc-halt
/etc/init/lxc-sysinit.conf
/etc/init/power-status-changed.conf
