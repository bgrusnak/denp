#!/bin/sh
(echo "upstream erl { server $BACKEND_PORT_8080_TCP_ADDR:$BACKEND_PORT_8080_TCP_PORT; }" && cat /etc/nginx/conf.d/proxy.conf) > proxy.conf.new
mv proxy.conf.new /etc/nginx/conf.d/proxy.conf
rm /etc/nginx/conf.d/default.conf
nginx -t
nginx
while true; do sleep 10; done;