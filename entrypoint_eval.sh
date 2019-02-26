#!/bin/sh
if [ ! -z $URI_BUILD ];
then
	URI_HOST=$(eval echo $URI_HOST)
	COMMAND="--haproxy.scrape-uri=$URI_SCHEME://$URI_USER:$URI_PASSWORD@$URI_HOST:$URI_PORT/$URI_PATH"
else
	COMMAND=$1
fi

/bin/haproxy_exporter $COMMAND
