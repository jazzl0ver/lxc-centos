# lxc-centos
Required files for CentOS 6 CT after conversion from OpenVZ to LXC
```
/etc/init.d/lxc-halt
/etc/rc.d/rc0.d/S00lxc-halt -> ../init.d/lxc-halt
/etc/rc.d/rc6.d/S00lxc-reboot -> ../init.d/lxc-halt
/etc/init/lxc-sysinit.conf
/etc/init/power-status-changed.conf
```

Add the following to /etc/securetty:
```
# LXC (Linux Containers)
lxc/console
lxc/tty1
lxc/tty2
lxc/tty3
lxc/tty4
# For libvirt/Virtual Machine Monitor
pts/0
```

Or just run the command (under root):
```
wget https://raw.githubusercontent.com/jazzl0ver/lxc-centos/master/lxc-setup.sh -O - | /bin/bash
```
