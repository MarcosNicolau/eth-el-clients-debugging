ENODE_URL=$1

curl http://localhost:8547 \
  -X POST \
  -H "Content-Type: application/json" \
  --data "{\"jsonrpc\":\"2.0\",\"method\":\"admin_addPeer\",\"params\":[\"$ENODE_URL\"],\"id\":1}"

