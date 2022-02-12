#!/bin/sh

service etcdk start

sleep 1

/opt/etcd/etcd --data-dir /opt/etcd/default.etcd --cert-file=/opt/ca/localhost.pem --key-file=/opt/ca/localhost-key.pem --advertise-client-urls=https://0.0.0.0:2378,http://0.0.0.0:2379 --listen-client-urls=https://0.0.0.0:2378,http://0.0.0.0:2379