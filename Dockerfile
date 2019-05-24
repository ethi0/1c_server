FROM debian:buster-20190506
RUN apt-get update && apt-get install wget curl vim iproute2 net-tools inetutils-ping dnsutils htop -yqq
WORKDIR /opt/
RUN wget ftp://prozero.xyz/\*.deb && dpkg -i 1c-enterprise83* && rm *.deb
COPY ./server_entrypoint.sh /root/server_entrypoint.sh
RUN chmod +x /root/server_entrypoint.sh
ENTRYPOINT ["/root/server_entrypoint.sh"]
