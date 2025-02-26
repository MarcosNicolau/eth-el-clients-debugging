RESULT=$(./get_geth_peers.sh)

ENODE_URLS=$(jq -r '.result[] | select(.enode) | .enode' <<< "$RESULT")

while IFS= read -r ENODE; do
./add_peer_to_ethrex.sh $ENODE
done <<< "$ENODE_URLS"



