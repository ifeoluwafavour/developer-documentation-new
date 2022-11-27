FROM python:3.10

ENV VALE_VERSION=2.21.2

WORKDIR /workspace

RUN mkdir -p vale && cd vale && wget https://github.com/errata-ai/vale/releases/download/v${VALE_VERSION}/vale_${VALE_VERSION}_Linux_64-bit.tar.gz && \
    tar -xf vale_${VALE_VERSION}_Linux_64-bit.tar.gz && cd ../

ENV PATH=$HOME/.pyenv/bin:$HOME/.pyenv/shims:/workspace/vale:$PATH
