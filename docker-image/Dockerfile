
ARG VERSION
FROM bitnami/python:latest as builder
MAINTAINER Leopoldo Angulo "leopol.angul0@gmail.com"
LABEL Name=PSAK Version=1.0.0

RUN apt-get update && \
	apt-get install -y nmap gnupg iputils-ping john tcpdump

RUN git clone https://github.com/commixproject/commix.git commix && \
	cd commix &&  \
	python3 commix.py --install
RUN git clone https://github.com/bhavsec/reconspider.git && \
	cd reconspider &&  \
	python3 setup.py install
RUN	curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
	chmod 755 msfinstall && \
  	./msfinstall && \
  	apt-get upgrade

ENV SQLMAP_INSTALL="no" \
	NIKTO_INSTALL="no" \
	HYDRA_INSTALL="no" \
	AIRCRACK_INSTALL="no"
COPY extra-tools /
RUN ["/others.sh"]
RUN ["/nikto.sh"]

RUN apt-get upgrade -y && \
    rm -r /var/lib/apt/lists /var/cache/apt/archives

COPY rootfs /
RUN ["/postunpack.sh"]

USER nonroot
ENTRYPOINT ["/entrypoint.sh"] 
