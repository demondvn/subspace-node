# subspace-node

## Build
    docker build -t subspace .
## Run
    docker run -it -d -v /mnt/blockstore/subspace:/root/.config/subspace-cli --restart unless-stopped --name subspace -p 30333:30333 -p 30433:30433 -p 30533:30533 subspace
