FROM mcr.microsoft.com/devcontainers/go

ARG ARCH=x86_64
ARG OS=linux
ARG VERSION=v1.33.0

RUN curl --output operator-sdk -LO https://github.com/operator-framework/operator-sdk/releases/download/${VERSION}/operator-sdk_${OS}_${ARCH}
RUN chmod +x operator-sdk && cp operator-sdk /usr/local/bin/operator-sdk