
FROM alpine

RUN apk update && \
    apk add --no-cache g++ git openssl-dev boost-dev make  && \
    git clone https://github.com/sipa/bitcoin-seeder.git && \
    cd bitcoin-seeder && \
    make && \
    ln -s /bitcoin-seeder/dnsseed /usr/bin/dnsseed  && \
    apk del g++ make git  

