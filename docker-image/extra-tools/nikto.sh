#!/bin/bash
## Nikto installation
echo "${NIKTO_INSTALL}"
if [[ "${NIKTO_INSTALL}" = "yes" ]]; then
    echo "** Installing Nikto **"
	git clone https://github.com/sullo/nikto
	apt-get install -y npm python-dev build-essential libssl-dev libffi-dev libxml2-dev libxslt1-dev zlib1g-dev && \
	npm install -g retire@2.0.3 && \
	npm update -g retire
fi
