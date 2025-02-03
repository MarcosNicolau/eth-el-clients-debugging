NETWORK=$1
DATA_DIR="${NETWORK}_data/geth"

mkdir -p $DATA_DIR

GETH_DISCOVERY_V5=false geth --syncmode snap \
  --http --http.corsdomain "*" --http.api eth,net,web3,admin,engine,debug  \
  --ws --ws.api eth,net,web3,admin \
  --datadir $DATA_DIR  --verbosity 4 \
  --authrpc.jwtsecret ${NETWORK}_data/jwt.hex \
  --$NETWORK --bootnodes "enode://12a43a7e6b5c03e7dea062118a2cd338cfb4f16deca11b0e76350f4138e3df28e7565c49a050ab7982a928a9ffb71b2c4fabc5046e2f40f6c4655190cf966bdd@65.109.84.102:30304"

