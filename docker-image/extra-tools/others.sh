#!/bin/bash
## SQLMAP - HYDRA - AIRCRACK Installation
if [[ "${SQLMAP_INSTALL}" = "yes" ]]; then
    echo "** Installing SQLMAP **"
    apt-get install sqlmap -y
fi
if [[ "${HYDRA_INSTALL}" = "yes" ]]; then
    echo "** Installing THC-HYDRA **"
    apt-get install hydra -y
fi
if [[ "${AIRCRACK_INSTALL}" = "yes" ]]; then
    echo "** Installing AIRCRAK-NG **"
    apt-get install aircrack-ng -y
fi