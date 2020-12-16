# Pentesting Swiss Army Knife (P-SAK)






## What is P-SAK?
Pentesting Swiss Army Knife (P-SAK) is a Docker Image with the **eleven ** ( four optional ) most used tools for Hacking and Pentesting. It allow you to use these tools easily and quickly on your Pentest from any S.O. with Docker Engine support. It has been developed using the [bitnami-docker-python](https://github.com/bitnami/bitnami-docker-python) as the base image and installing the following tools:
* [NMAP](https://nmap.org/) - Utility for network , ports and services discovery in addition to security auditing.
* [Metasploit](https://github.com/rapid7/metasploit-framework) - Most used penetration testing framework.
* [Commix](https://github.com/commixproject/commix) - Automated tool to test web-based applications with the view to find  vulnerabilities related to command injection.
* [Reconspider](https://github.com/bhavsec/reconspider) - OSINT Framework for scanning IP Address, Emails, Websites, Organizations and find out information from different sources.
* [Wfuzz](https://github.com/xmendez/wfuzz)- It replaces any web reference to the FUZZ keyword by the value of a given payload.
* [John the Ripper](https://www.openwall.com/john/) - Password cracking software tool.
* [Tcpdump](https://www.tcpdump.org/manpages/tcpdump.1.html) - Data-network packet analyzer

Optional tools:
* [SQLMAP](https://github.com/Xayias/https-github.com-sqlmapproject-sqlmap) - Tool that automates the process of detecting and exploiting SQL injection flaws and taking over of database servers.
* [Nikto](https://github.com/sullo/nikto) - Web server vulnerabilities scanner.
* [Hydra](https://github.com/vanhauser-thc/thc-hydra) - Password brute force cracking tools.
* [Aircrack-ng](https://www.aircrack-ng.org/) - Complete suite of tools to assess WiFi network security.

> NOTE: You can  install  additional tools using enviroment variables.

## Building
```
$ git clone https://github.com/leoanggal1/P-SAK.git
$ cd P-SAK
$ docker build -t psak:0.0.1 docker-image/
```
#### Enviroment variables
#### Non-root user
aqui tabla de variables
non-root image y que hacer para ser root
## Usage
decir algo aqui también de los volumenes
## Contributing
Want to contribute? Great!! You can request new features, each contribution is greatly valued!
## Contact Developer
Do you want to have a conversation in private?
* Email:  leopol.angul0@gmail.com
* LinkedIn: [Leopoldo Angulo Gallego](https://www.linkedin.com/in/leopoldo-angulo-gallego-66b957195)

## Legal Disclaimer
> Usage of P-SAK image for attacking targets without prior mutual consent is illegal.
> It is the end user's responsibility to obey all applicable local, state and federal laws.
> Developers assume no liability and are not responsible for any misuse or damage caused by this image.

## Help us
Found this project useful? If you want, you might donate.

* For donate BTC : **39n4G7byFu5XWrmXfdAirDoWLR8mbtwhoD**
<p align="center">
![Donate-BTC](images/Donate-BTC.PNG)
</p>

