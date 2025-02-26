NETWORK=$1
BOOTNODES=$2

DIR=${NETWORK}_data/ethrex


cd ethrex
RUST_BACKTRACE=0 RUST_LOG=4 cargo run --features libmdbx  --bin ethrex -- \
    --http.port 8547 \
    --authrpc.port 8548 \
    --p2p.port 30304\
    --discovery.port 30304 \
    --network $NETWORK \
    --datadir ../$DIR \
    --authrpc.jwtsecret "/home/admin/nodes/${NETWORK}_data/jwt.hex" \
    --bootnodes "enode://536d58e4ffad91ff3f0fc75ed35c612112a4e5ce8d53172acb9757935c02f61bc408eea6711f95fe34ec56df9200ea3f3e22986c1f056b62d591dc55be0c4043@127.0.0.1:30303" \
    --syncmode full
    
