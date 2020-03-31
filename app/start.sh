#!/bin/bash

[ ! -f /etc/nginx/nodules-enabled/90-socket-site.conf ] &&
	ln -s /tmp/conf/nginx /etc/nginx/modules-enabled/90-socket-site.conf
service nginx start &&
	setsid openfortivpn -c /tmp/conf/forti

