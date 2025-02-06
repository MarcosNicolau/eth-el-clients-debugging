.PHONY = start_geth_holesky start_lighthouse_holesky gen_jwt

NETWORK ?= holesky
NODE_NAME ?= ethrex
ENGINE_PORT ?= 8548
CHECKPOINT_SYNC_URL ?= https://checkpoint-sync.holesky.ethpandaops.io
LIGHTHOUSE_PORT ?= 9099
LIGHTHOUSE_DICOVERY_PORT ?= 9999

create_data_dir:
        mkdir -p $(NETWORK)_data

gen_jwt: create_data_dir
        openssl rand -hex 32 | tr -d "\n" | sudo tee $(NETWORK)_data/jwt.hex

start_geth: create_data_dir
        mkdir -p $(NETWORK)_data
        ./start_geth.sh $(NETWORK)

start_ethrex: create_data_dir
        mkdir -p $(NETWORK)_data
        ./start_ethrex.sh $(NETWORK) $(BOOTNODES)

start_lighthouse: create_data_dir
        mkdir -p $(NETWORK)_data
        ./start_lighthouse.sh $(NETWORK) $(CHECKPOINT_SYNC_URL) $(NODE_NAME) $(ENGINE_PORT) $(LIGHTHOUSE_PORT) $(LIGHTHOUSE_DICOVERY_PORT)
