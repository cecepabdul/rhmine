FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget unzip

RUN wget https://github.com/polyminer1/rhminer/releases/download/2.3b/rhminer.2.3.Linux.CPU_OLDGEN.zip && \
    unzip rhminer.2.3.Linux.CPU_OLDGEN.zip

CMD ./rhminer -v 2 -r 20 -s pool.pascalcoin.org:3336 -su 587770-89.0.Docker/ceceptkj67@gmail.com -cpu -cputhreads 4
