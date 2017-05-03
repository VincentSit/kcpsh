#!/bin/bash

~/kcptun/client_darwin_amd64 -c ~/kcptun/kcpsh/client-config.json 2>&1 &
echo "Kcptun started."