FROM bitnami/python:3.7.9-debian-10-r120
MAINTAINER Leopoldo Angulo "leopol.angul0@gmail.com"
LABEL Name=PSAK Version=1.0.0

RUN install_packages nmap gnupg iputils-ping john tcpdump libcurl4-openssl-dev libcap2-bin

ENV SQLMAP_INSTALL="no" \
    NIKTO_INSTALL="no" \
    HYDRA_INSTALL="no" \
    AIRCRACK_INSTALL="no"


RUN rm -rf /var/lib/apt/lists /var/cache/apt/archives /app/wfuzz

COPY rootfs /

RUN ["/prepare.sh"]

USER psak
ENTRYPOINT ["/entrypoint.sh"] 
