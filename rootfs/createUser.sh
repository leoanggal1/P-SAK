#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

# Create nonroot user
useradd -m -r -u 1001 -g root psak
groupadd pcap
usermod -a -G pcap psak
chgrp pcap /usr/sbin/tcpdump

# Set networking capabilities
setcap cap_net_raw=eip /usr/sbin/tcpdump
ln -s /usr/sbin/tcpdump /usr/bin/tcpdump


