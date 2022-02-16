#!/bin/sh

# /usr/bin/ttyd -p6380 -d7 -S -C/opt/ca/localhost.pem -K/opt/ca/localhost-key.pem -A/opt/ca/ca.pem redis-cli
service ttydrc start

sleep 1

/usr/bin/redis-server --requirepass $(echo "YXJiYWxlc3QK"|base64 -d) \
        --appendfsync no \
        --appendonly no \
        --save ""