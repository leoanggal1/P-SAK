#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

# Install wfuzz
git clone https://github.com/xmendez/wfuzz.git && cd wfuzz
python3 setup.py install

# Install commix
git clone https://github.com/commixproject/commix.git commix && cd commix
python3 commix.py --install

# Install reconspider
git clone https://github.com/bhavsec/reconspider.git && cd reconspider
python3 setup.py install

# Install msfinstall
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
chmod 755 msfinstall && ./msfinstall
apt-get upgrade

# Nikto installation
if [[ "${NIKTO_INSTALL}" = "yes" ]]; then
    echo "** Installing Nikto **"
    git clone https://github.com/sullo/nikto
    install_packages npm python-dev build-essential libssl-dev libffi-dev libxml2-dev libxslt1-dev zlib1g-dev
    npm install -g retire
fi

## SQLMAP - HYDRA - AIRCRACK Installation
if [[ "${SQLMAP_INSTALL}" = "yes" ]]; then
    echo "** Installing SQLMAP **"
    install_packages sqlmap
fi
if [[ "${HYDRA_INSTALL}" = "yes" ]]; then
    echo "** Installing THC-HYDRA **"
    install_packages hydra
fi
if [[ "${AIRCRACK_INSTALL}" = "yes" ]]; then
    echo "** Installing AIRCRAK-NG **"
    install_packages aircrack-ng
fi

