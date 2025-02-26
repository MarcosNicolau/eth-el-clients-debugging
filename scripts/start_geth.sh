GETH="./build/bin/geth"
NETWORK=$1
DATA_DIR="${NETWORK}_data/geth"

mkdir -p $DATA_DIR

GETH_DISCOVERY_V5=false $GETH --syncmode snap \
  --http --http.corsdomain "*" --http.api eth,net,web3,admin,engine,debug  \
  --ws --ws.api eth,net,web3,admin \
  --datadir $DATA_DIR  --verbosity 4 \
  --authrpc.jwtsecret ${NETWORK}_data/jwt.hex \
  --$NETWORK 

