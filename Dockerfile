FROM scratch

MAINTAINER SuLingGG

ADD *.tar.gz /
COPY --chown=0:0 data/etc/firewall.user /etc
COPY --chown=0:0 data/etc/index.htm /etc
COPY --chown=0:0 data/etc/rc.local /etc
COPY --chown=0:0 data/etc/config/dhcp /etc/config
COPY --chown=0:0 data/etc/config/network /etc/config
