#!/usr/bin/env bash

cat << EOF > /home/bgrbesic/idenaconfigtest
{
  "DataDir": "/app/idena/datadir",
  "RPC": {
    "HTTPHost": "0.0.0.0",
    "HTTPPort": 9009
  },
  "IpfsConf": {
    "Profile": "server",
    "IpfsPort": 40405,
    "BlockPinThreshold": 0.3,
    "FlipPinThreshold": 0.5
  },
  "Sync": {
    "FastSync": true
  }
}
EOF

/app/idena/idena-node --config /app/idena/config.json