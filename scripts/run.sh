#!/bin/sh

if [ -z $TUNNEL_CLIENT ]; then
  echo "Running wstunnel in server mode"
  /wstunnel --server -v wss://"${SERVER_ADDRESS}" --restrictTo "$RESTRICT_TO_ADDRESS"
else
  echo "Running wstunnel in client mode"
  /wstunnel -v --udp --udpTimeoutSec="${UDP_TIMEOUT}" -L "${LOCAL_TO_REMOTE}" wss://"${SERVER_ADDRESS}"
fi
