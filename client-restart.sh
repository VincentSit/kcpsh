#!/bin/bash

echo "Stopping Kcptun..."
bash ~/kcptun/kcpsh/client-stop.sh
bash ~/kcptun/kcpsh/client-start.sh
echo "Kcptun started."