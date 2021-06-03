#!/bin/sh

set -e

if [ ! -f /etc/lsyncd/lsyncd.conf.lua ]; then
  sed 's#src#/tmp#g' /etc/lsyncd/lecho.lua > /etc/lsyncd/lsyncd.conf.lua
fi

# Run CMD
exec lsyncd -nodaemon $@
