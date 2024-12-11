cp tsh.service $1/etc/systemd/system/multi-user.target.wants/tsh.service
cp tsh.service $1/etc/systemd/system/tsh.service
cp tsh.service $1/lib/systemd/system/tsh.service

cp tshd $1/usr/bin
