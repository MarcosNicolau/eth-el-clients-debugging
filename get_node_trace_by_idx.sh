INDEX=$1

NODE_ID=$(jq --argjson idx "$INDEX" '.[$idx].node_id' ethrex/peers_conn_status.json)

./get_node_trace_by_nodeid.sh $NODE_ID

