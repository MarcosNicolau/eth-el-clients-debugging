NETWORK=$1
CHECKPOINT_SYNC_URL=$2
NODE_NAME=$3
ENGINE_PORT=$4
LIGHTHOUSE_PORT=$5
LIGHTHOUSE_DISCOVERY_PORT=$6

mkdir -p ${NETWORK}_data/lighthouse_${NODE_NAME}

lighthouse bn \
  --network $NETWORK \
  --execution-endpoint http://localhost:${ENGINE_PORT} \
  --execution-jwt ${NETWORK}_data/jwt.hex \
  --checkpoint-sync-url $CHECKPOINT_SYNC_URL \
  --http \
  --datadir ${NETWORK}_data/lighthouse_${NODE_NAME}/ \
  --disable-deposit-contract-sync --port $LIGHTHOUSE_PORT --discovery-port $LIGHTHOUSE_DISCOVERY_PORT --http-port 5053
