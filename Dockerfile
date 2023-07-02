FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget unzip

RUN wget https://github.com/polyminer1/rhminer/releases/download/2.3b/rhminer.2.3.Linux.CPU_OLDGEN.zip && \
    unzip rhminer.2.3.Linux.CPU_OLDGEN.zip

CMD ./rhminer -v 2 -r 20 -s fastpool.xyz:10096 -su 111887-89.0.D/ceceptkj67@gmail.com -cpu
