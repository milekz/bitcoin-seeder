FROM debian:buster-slim

RUN apt update  &&  \ 
    apt -y install build-essential libboost-all-dev libssl-dev git &&  \ 
    git clone https://github.com/sipa/bitcoin-seeder.git &&  \ 
    cd bitcoin-seeder &&  \
    make &&  \ 
    cp dnsseed /usr/bin/   &&  \ 
    #rm -rf /bitcoin-seeder  &&  \
    ln -s /bitcoin-seeder/dnsseed  /usr/bin/dnsseed && \
    apt purge -y build-essential && \
    apt -y autoremove && \
    rm -rf /var/lib/apt/lists/*
    
