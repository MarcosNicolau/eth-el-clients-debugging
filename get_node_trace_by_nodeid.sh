NODE_ID=$1
NODE_ID=${NODE_ID//\"/}  # Removes all double quotes
NODE_ID=${NODE_ID//\'/}  # Removes all single quotes

# Read node ip addr + tcp_port if from peers file
RESULT=$(jq --argjson node_id \"$NODE_ID\" '.[] | select(.node_id == $node_id)' ./ethrex/peers_conn_status.json)

if [ -z $RESULT ]; then
	echo "Node not found"
	exit 1
fi

echo "NODE FOUND $RESULT"

IP=$(jq -r ".ip" <<< $RESULT)
TCP_PORT=$(jq -r ".tcp_port" <<< $RESULT)

NODE_ID_PATTERN_1="0x${NODE_ID:2:4}…${NODE_ID: -4}"
NODE_ID_PATTERN_2="${NODE_ID:2}"
IP_PORT_PATTERN="$IP:$TCP_PORT"

cat ethrex.log | grep  -e $NODE_ID -e $NODE_ID_PATTERN_1 -e $NODE_ID_PATTERN_2 -e $IP_PORT_PATTERN

