#!/bin/bash
chmod +x /postunpack.sh /entrypoint.sh
useradd -m -r -u 1001 -g root psak
groupadd pcap
usermod -a -G pcap psak
chgrp pcap /usr/sbin/tcpdump
setcap cap_net_raw=eip /usr/sbin/tcpdump
ln -s /usr/sbin/tcpdump /usr/bin/tcpdump


