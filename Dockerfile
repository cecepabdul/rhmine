FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget unzip

RUN wget https://github.com/polyminer1/rhminer/releases/download/2.3b/rhminer.2.3.Linux.CPU_OLDGEN.zip && \
    unzip rhminer.2.3.Linux.CPU_OLDGEN.zip

CMD ./rhminer -v 2 -r 20 -s stratum+tcp://pascal.tucanpool.com:3334 -su 587770-89.0.D/ceceptkj67@gmail.com -cpu
