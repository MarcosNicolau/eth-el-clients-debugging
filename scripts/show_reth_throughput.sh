PATTERN_1="Executed block range"
PATTERN_2="Finished executing block range"

tail -f ./reth.log | grep -e "$PATTERN_1" -e "$PATTERN_2"

