FROM python:3.7

RUN apt-get update && \
    curl -LkSs https://github.com/awslabs/aws-sam-cli/archive/v0.44.0.tar.gz -o aws-sam.tar.gz && \
    tar -xf aws-sam.tar.gz && \
    cd ./aws-sam-* && \
    make && \
    cd ../
