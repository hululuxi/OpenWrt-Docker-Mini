FROM scratch

LABEL org.opencontainers.image.authors="SuLingGG"

ADD *.tar.gz /
COPY --chown=0:0 data/etc /etc
