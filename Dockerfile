FROM python:3.7-slim-stretch

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    make && \
    curl -LkSs https://github.com/awslabs/aws-sam-cli/archive/v0.44.0.tar.gz -o aws-sam.tar.gz && \
    tar -xf aws-sam.tar.gz && \
    cd ./aws-sam-* && \
    make && \
    cd ../
