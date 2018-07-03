#!/bin/bash
set -u
set -e

echo "[*] Cleaning up temporary data directories"
rm -rf qdata
mkdir -p qdata/logs

echo "[*] Configuring node 1 (permissioned)"
mkdir -p qdata/dd1/{keystore,geth}
cp permissioned-nodes.json qdata/dd1/static-nodes.json
cp permissioned-nodes.json qdata/dd1/
cp keys/key1 qdata/dd1/keystore
cp raft/nodekey1 qdata/dd1/geth/nodekey
cp signKeys/quorum-raft-private-key1 qdata/dd1/quorum-raft-private-key
mkdir -p qdata/dd1/raftPubKeys/
cp signKeys/pub/* qdata/dd1/raftPubKeys/
$GETH --datadir qdata/dd1 init genesis.json

echo "[*] Configuring node 2 (permissioned)"
mkdir -p qdata/dd2/{keystore,geth}
cp permissioned-nodes.json qdata/dd2/static-nodes.json
cp permissioned-nodes.json qdata/dd2/
cp keys/key2 qdata/dd2/keystore
cp raft/nodekey2 qdata/dd2/geth/nodekey
cp signKeys/quorum-raft-private-key2 qdata/dd2/quorum-raft-private-key
mkdir -p qdata/dd2/raftPubKeys/
cp signKeys/pub/* qdata/dd2/raftPubKeys/
$GETH --datadir qdata/dd2 init genesis.json

echo "[*] Configuring node 3 (permissioned)"
mkdir -p qdata/dd3/{keystore,geth}
cp permissioned-nodes.json qdata/dd3/static-nodes.json
cp permissioned-nodes.json qdata/dd3/
cp keys/key6 qdata/dd3/keystore
cp keys/key3 qdata/dd3/keystore
cp raft/nodekey3 qdata/dd3/geth/nodekey
cp signKeys/quorum-raft-private-key3 qdata/dd3/quorum-raft-private-key
mkdir -p qdata/dd3/raftPubKeys/
cp signKeys/pub/* qdata/dd3/raftPubKeys/
$GETH --datadir qdata/dd3 init genesis.json

echo "[*] Configuring node 4 (permissioned)"
mkdir -p qdata/dd4/{keystore,geth}
cp permissioned-nodes.json qdata/dd4/static-nodes.json
cp permissioned-nodes.json qdata/dd4/
cp keys/key4 qdata/dd4/keystore
cp raft/nodekey4 qdata/dd4/geth/nodekey
cp signKeys/quorum-raft-private-key4 qdata/dd4/quorum-raft-private-key
mkdir -p qdata/dd4/raftPubKeys/
cp signKeys/pub/* qdata/dd4/raftPubKeys/
$GETH --datadir qdata/dd4 init genesis.json

echo "[*] Configuring node 5"
mkdir -p qdata/dd5/{keystore,geth}
cp permissioned-nodes.json qdata/dd5/static-nodes.json
cp keys/key5 qdata/dd5/keystore
cp raft/nodekey5 qdata/dd5/geth/nodekey
cp signKeys/quorum-raft-private-key5 qdata/dd5/quorum-raft-private-key
mkdir -p qdata/dd5/raftPubKeys/
cp signKeys/pub/* qdata/dd5/raftPubKeys/
$GETH --datadir qdata/dd5 init genesis.json

echo "[*] Configuring node 6"
mkdir -p qdata/dd6/{keystore,geth}
cp permissioned-nodes.json qdata/dd6/static-nodes.json
cp raft/nodekey6 qdata/dd6/geth/nodekey
cp keys/key7 qdata/dd6/keystore
cp signKeys/quorum-raft-private-key6 qdata/dd6/quorum-raft-private-key
mkdir -p qdata/dd6/raftPubKeys/
cp signKeys/pub/* qdata/dd6/raftPubKeys/
$GETH --datadir qdata/dd6 init genesis.json

echo "[*] Configuring node 7"
mkdir -p qdata/dd7/{keystore,geth}
cp permissioned-nodes.json qdata/dd7/static-nodes.json
cp raft/nodekey7 qdata/dd7/geth/nodekey
cp keys/key8 qdata/dd7/keystore
cp signKeys/quorum-raft-private-key7 qdata/dd7/quorum-raft-private-key
mkdir -p qdata/dd7/raftPubKeys/
cp signKeys/pub/* qdata/dd7/raftPubKeys/
$GETH --datadir qdata/dd7 init genesis.json
