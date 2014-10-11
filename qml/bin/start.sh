#!/bin/sh

# Start MeeSaver daemon
/sbin/initctl stop apps/meesaver
sleep 2
/sbin/initctl start apps/meesaver
