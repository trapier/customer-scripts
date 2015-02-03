#!/bin/bash
for i in /sys/class/net/*; do
  iface=`basename $i`;
  if [[ $iface == swp* ]]; then
    ip link set $iface up;
  fi
done

