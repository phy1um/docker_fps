#!/bin/bash

set -x && ./run_server_x64.sh \
    +set net_strict 1 \
    +set net_port $PORT \
    +set sv_hostname "$HOSTNAME"

