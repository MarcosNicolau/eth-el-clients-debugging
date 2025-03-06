NETWORK=$1
BOOTNODES=$2

DIR=${NETWORK}_data/ethrex


cd ethrex
RUST_LOG=4 cargo run --release --features libmdbx --bin ethrex -- \
    --http.port 8545 \
    --authrpc.port 8551 \
    --p2p.port 30303\
    --discovery.port 30303 \
    --network $NETWORK \
    --datadir $DIR \
    --authrpc.jwtsecret "/home/app/nodes/${NETWORK}_data/jwt.hex" \
    --bootnodes $BOOTNODES

