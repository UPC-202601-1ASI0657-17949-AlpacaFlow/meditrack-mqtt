#!/bin/sh
/usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf 2>&1 | grep -v 'bad socket read/write' | grep -v 'New connection from 127.0.0.1' | grep -v 'New connection from 10.'