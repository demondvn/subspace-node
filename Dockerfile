FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y wget ocl-icd-opencl-dev libopencl-clang-dev libgomp1 && \
    wget -O subspace-cli https://github.com/subspace/subspace-cli/releases/download/v0.1.9-alpha/subspace-cli-Ubuntu-x86_64-v0.1.9-alpha && \
    chmod +x subspace-cli && \
    mv subspace-cli /usr/local/bin/
WORKDIR /app
# COPY script.sh script.sh
# RUN chmod +x script.sh
# CMD ./script.sh
ENTRYPOINT subspace-cli farm -v || sleep 3600
