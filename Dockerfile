FROM golang:1.17

ENV GODEBUG netdns=cgo

RUN mkdir /opt/lnmux
ADD . /opt/lnmux
WORKDIR /opt/lnmux

ENTRYPOINT entrypoint.sh
