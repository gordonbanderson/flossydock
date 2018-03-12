#!/bin/bash
set -e

#default command
/root/gows/bin/webhook -hooks /root/gows/sphinxhooks.json &

#default command
/usr/local/bin/searchd --nodetach --config /usr/local/etc/sphinx.conf "$@"

