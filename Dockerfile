FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y wget && \
    wget -O subspace-cli https://github.com/subspace/subspace-cli/releases/download/v0.1.9-alpha/subspace-cli-Ubuntu-x86_64-v0.1.9-alpha && \
    chmod +x subspace-cli && \
    mv subspace-cli /usr/local/bin/

ENTRYPOINT ["subspace-cli", "farm", "--verbose"]
