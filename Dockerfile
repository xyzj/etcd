FROM alpine
LABEL maintainer="X.Minamoto"
ENV DEBIAN_FRONTEND=noninteractive LANG=C.UTF-8

COPY	buildfiles /opt/

ENTRYPOINT /opt/etcd/etcd --data-dir /opt/etcd/default.etcd --cert-file=/opt/ca/localhost.pem --key-file=/opt/ca/localhost-key.pem --advertise-client-urls=https://0.0.0.0:2378,http://0.0.0.0:2379 --listen-client-urls=https://0.0.0.0:2378,http://0.0.0.0:2379
