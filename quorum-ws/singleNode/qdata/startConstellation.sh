#!/bin/bash
set -u
set -e

DDIR=qdata/c1
rm -f "$DDIR/tm.ipc"
CMD="constellation-node --url=https://127.0.0.1:9001/ --port=9001 --workdir=$DDIR --socket=tm.ipc --publickeys=tm1.pub --privatekeys=tm1.key --othernodes=https://127.0.0.1:9001/"
echo "$CMD >> qdata/logs/constellation1.log 2>&1 &"
$CMD >> "qdata/logs/constellation1.log" 2>&1 &

DOWN=true
while $DOWN; do
    sleep 0.1
    DOWN=false
    if [ ! -S "qdata/c1/tm.ipc" ]; then
       DOWN=true
    fi
done
