#!/bin/sh

# Stop MeeSaver daemon
accli -I
/sbin/initctl stop apps/meesaver
