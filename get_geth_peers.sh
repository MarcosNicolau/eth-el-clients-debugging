curl --data '{"jsonrpc":"2.0","method":"admin_peers","params":[],"id":1}' -H "Content-Type: application/json" -X POST http://127.0.0.1:8545 | jq .

