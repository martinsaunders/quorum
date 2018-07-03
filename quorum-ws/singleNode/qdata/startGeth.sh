#!/bin/bash
set -u
set -e

echo "[*] Starting Ethereum nodes"
#GETH=pathToYourGETH
set -v
ARGS="--nodiscover --raft --rpc --rpcaddr 0.0.0.0 --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,quorum --emitcheckpoints"
PRIVATE_CONFIG=qdata/c1/tm.ipc nohup $GETH --datadir qdata/dd1 $ARGS --permissioned --raftport 50401 --rpcport 22000 --port 21000 --unlock 0 --password ./qdata/passwords.txt 2>>qdata/logs/geth1.log &
set +v

echo
echo "All nodes configured. See 'qdata/logs' for logs, and run e.g. 'geth attach qdata/dd1/geth.ipc' to attach to the first Geth node."
echo "To test sending a private transaction from Node 1 to Node 7, run './runscript.sh private-contract.js'"
