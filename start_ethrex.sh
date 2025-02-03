NETWORK=$1
BOOTNODES=$2

DIR=${NETWORK}_data/ethrex


cd ethrex
RUST_LOG=4 cargo run --bin ethrex -- \
    --http.port 8547 \
    --authrpc.port 8548 \
    --p2p.port 30304\
    --discovery.port 30304 \
    --network $NETWORK \
    --datadir ../$DIR \
    --authrpc.jwtsecret "/home/admin/nodes/${NETWORK}_data/jwt.hex" \
    --bootnodes "enode://05f5c7c6ef017bdf971f718729b951a312923adec996884b0b2073f13ad99e34a529b66ab5d883176c8d8f74d5fc01c845e2c67cf82cd67d41dee4b7bd7312a6@127.0.0.1:30303"

