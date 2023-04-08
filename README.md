# subspace-node

## Create Wallet 
    [https://nodes.guru/subspace/setup-guide/en](https://nodes.guru/subspace/setup-guide/en)
## Build
    docker build -t subspace .
## Run
    docker run -it -d -v /mnt/blockstore/subspace:/root/.config/subspace-cli --restart unless-stopped --name subspace -e ADDRESS=stBcB4iat5hfNSMNGc6oBLQ7s3BcmqgiuKzru2H3msrt52W1a -p 30333:30333 -p 30433:30433 -p 30533:30533 subspace
