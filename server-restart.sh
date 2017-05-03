#!/bin/bash

echo "Stopping Kcptun..."
bash ~/kcptun/kcpsh/server-stop.sh
bash ~/kcptun/kcpsh/server-start.sh
echo "Kcptun started."