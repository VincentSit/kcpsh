#!/bin/bash

~/kcptun/server_linux_amd64 -c ~/kcptun/kcpsh/server-config.json 2>&1 &
echo "Kcptun started."