PATTERN_1="sync"
PATTERN_2="engine"

tail -f ./ethrex.log | grep -e $PATTERN_1 -e $PATTERN_2

