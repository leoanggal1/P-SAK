
ARG VERSION
FROM bitnami/python:latest as builder
MAINTAINER Leopoldo Angulo Gallego "leoangulogallego@gmail.com"
LABEL Name=PSAK Version=1.0.0
ENV SQLMAP_INSTALL="yes" \
	NIKTO_INSTALL="yes" \
	HYDRA_INSTALL="yes" \
	AIRCRACK_INSTALL="yes"

RUN apt-get update && \
	apt-get install -y nmap gnupg iputils-ping john tcpdump
RUN	curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
	chmod 755 msfinstall && \
  	./msfinstall && \
  	apt-get upgrade
RUN git clone https://github.com/commixproject/commix.git commix && \
	cd commix &&  \
	python3 commix.py --install
RUN git clone https://github.com/bhavsec/reconspider.git && \
	cd reconspider &&  \
	python3 setup.py install

COPY extra-tools /
RUN ["/others.sh"]
RUN	["/nikto.sh"]
RUN	["/w3af.sh"]

RUN apt-get upgrade -y && \
    rm -r /var/lib/apt/lists /var/cache/apt/archives

COPY rootfs /
ENTRYPOINT ["/entrypoint.sh"] 