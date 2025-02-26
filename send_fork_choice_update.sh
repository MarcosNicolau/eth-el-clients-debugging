HEAD_BLOCK_HASH=$1
JWT_FILE=holesky_data/jwt.hex
URL=http://localhost:8548
TOKEN="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiYWRtaW4iOnRydWUsImlhdCI6MTczOTkzMjk1Mn0.UFh5OF8DsPLF3GI2YDPDKj3zksPsho-utb8yQNZs2N0"

curl --data "{\"jsonrpc\":\"2.0\",\"method\":\"engine_forkchoiceUpdatedV3\",\"params\":[{\"headBlockHash\": $HEAD_BLOCK_HASH, \"safeBlockHash\": 0, \"finalizedBlockHash\": 0}, null],\"id\":1|" -H "Content-Type: application/json" -H "Authorization: Bearer $TOKEN" -X POST "$URL"

