# subspace-node

## Create Wallet 
[https://nodes.guru/subspace/setup-guide/en](https://nodes.guru/subspace/setup-guide/en)
## Build
    docker build -t subspace .
## Run
    docker run -it -d -v /mnt/blockstore/subspace:/root/.local/share/subspace-cli --restart unless-stopped --name subspace  -p 30333:30333 -p 30433:30433 -p 30533:30533 subspace
## Init 
    docker exec -it subspace /bin/bash
    /usr/local/bin/subspace-cli init
    exit
## Restart
    docker restart subspace

