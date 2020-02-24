
FROM alpine

RUN apk update && \
    apk add --no-cache g++ git openssl-dev boost-dev make && \
    git clone https://github.com/sipa/bitcoin-seeder.git && \
    cd bitcoin-seeder && \
    make && \
    apk del g++ make git
    
ENV PATH="/bitcoin-seeder:${PATH}"
