#!/bin/bash
echo "** Pentesting Swiss Army Knife **"
echo "** P-SAK is a Docker image that collects the most used Ethical Hacking tools by Leopoldo Angulo Gallego **"
## Run P-SAK base tools
if [[ "$1" = "nmap" ||  "$1" = "john" || "$1" =~ "msf" || "$1" = "commix" || "$1" = "bash" || "$1" = "tcpdump"|| "$1" = "ping" || "$1" = "wfuzz" ]]; then
    echo "** Starting" $1 " **"
    exec "$@"
fi
if [[ "$1" = "reconspider" ]]; then
    echo "** Starting" $1 " **"
    exec "python /app/reconspider/reconspider.py"
fi
## Run P-SAK extra tools
if [[ "${SQLMAP_INSTALL}" = "no" && "$1" = "sqlmap" ]]; then
    echo "** Enviroment variable SQLMAP_INSTALL = NO. Not installed SQLMAP **"
fi
if [[ "${SQLMAP_INSTALL}" = "yes" && "$1" = "sqlmap" ]]; then
    echo "** Starting SQLMAP **"
    exec "$@"
fi
if [[ "${NIKTO_INSTALL}" = "no" && "$1" = "nikto" ]]; then
    echo "** Enviroment variable NIKTO_INSTALL = NO. Not installed NIKTO **"
fi
if [[ "${NIKTO_INSTALL}" = "yes" && "$1" = "nikto" ]]; then
    echo "** Starting Nikto **"
    perl /app/nikto/program/nikto.pl
fi
if [[ "${HYDRA_INSTALL}" = "yes" && "$1" =~ "hydra" ]]; then
    echo "** Starting" $1 " **"
    exec "$@"
fi
if [[ "${AIRCRACK_INSTALL}" = "yes" && "$1" =~ "aircrack" ]]; then
    echo "** Starting" $1 " **"
    exec "$@"
fi
if [[ "$1" = "" ]]; then
    echo "** Starting P-SAK **"
    exec "/bin/bash"
fi
echo "** Starting P-SAK"
echo "[ bash | nmap | john | msf | commix | reconspider | tcpdump | sqlmap | nikto | hydra | aircrack-ng | wfuzz ]"
exec "$@"
