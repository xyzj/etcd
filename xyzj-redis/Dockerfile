FROM alpine
LABEL maintainer="X.Minamoto"
ENV DEBIAN_FRONTEND=noninteractive LANG=C.UTF-8

COPY buildfiles /opt

RUN cp /opt/ttydrc /etc/init.d && \
    apk update && \
    apk add --no-cache openrc redis && \
    openrc && \
    touch /run/openrc/softlevel && \
    rc-update add ttydrc && \
    rm -f /var/cache/apk/*.tar.gz

ENTRYPOINT /opt/run.sh
#ENTRYPOINT /opt/etcd/etcd --data-dir /opt/etcd/default.etcd --cert-file=/opt/ca/localhost.pem --key-file=/opt/ca/localhost-key.pem --advertise-client-urls=https://0.0.0.0:2378,http://0.0.0.0:2379 --listen-client-urls=https://0.0.0.0:2378,http://0.0.0.0:2379
