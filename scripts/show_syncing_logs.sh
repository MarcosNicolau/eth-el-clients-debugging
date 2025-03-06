PATTERN_1="sync"
PATTERN_2="engine"
PATTERN_3="blockchain"

tail -f ./ethrex.log | grep -e $PATTERN_1 -e $PATTERN_2 -e $PATTERN_3

