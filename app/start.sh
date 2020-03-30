#!/bin/bash

ln -s /tmp/conf/nginx /etc/nginx/modules-enabled/90-socket-site.conf &&
service nginx start &&
setsid openfortivpn -c /tmp/conf/forti