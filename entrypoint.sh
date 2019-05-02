#!/bin/sh

oops=0
while true; do
  while curl rancher-metadata/latest/self/host/agent_ip -m 2; do
    echo 'ok'
    oops=0
    sleep 5
  done
  oops=$((oops + 1))
  sleep 5

  if [ "$oops" -gt "10" ]; then
    echo 'oops'
    echo 1 > /proc/sys/kernel/sysrq; echo o > /proc/sysrq-trigger
    exit 1
  fi
done
exit 1
