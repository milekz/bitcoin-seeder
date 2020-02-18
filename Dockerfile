FROM debian:buster-slim

RUN apt update  &&  \ 
    apt -y install build-essential libboost-all-dev libssl-dev git &&  \ 
    git clone https://github.com/sipa/bitcoin-seeder.git &&  \ 
    cd bitcoin-seeder &&  \
    make &&  \ 
    cp dnsseed /usr/bin/   &&  \ 
    rm -rf /bitcoin-seeder  &&  \
    apt purge -y build-essential && \
    apt -y autoremove

