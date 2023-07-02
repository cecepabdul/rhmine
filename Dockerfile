FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget unzip

RUN wget https://github.com/polyminer1/rhminer/releases/download/2.3b/rhminer.2.3.Linux.CPU_OLDGEN.zip && \
    unzip rhminer.2.3.Linux.CPU_OLDGEN.zip

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
