#!/bin/bash

echo "Stopping Kcptun..."
bash ~/kcptun/kcpsh/stop.sh
bash ~/kcptun/kcpsh/start.sh
echo "Kcptun started."