FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget unzip

# Buat folder untuk menyimpan file rhminer
RUN mkdir /pasc

# Download dan ekstrak rhminer ke folder yang baru dibuat
RUN wget -O /rhminer_files/rhminer.zip https://github.com/polyminer1/rhminer/releases/download/2.3b/rhminer.2.3.Linux.CPU_OLDGEN.zip && \
    unzip /rhminer_files/rhminer.zip -d /pasc/

# Salin entrypoint ke folder yang baru dibuat
COPY entrypoint /pasc/
RUN chmod +x /pasc/entrypoint

# Tentukan direktori kerja ke folder yang baru dibuat
WORKDIR /pasc

# Jalankan entrypoint
ENTRYPOINT ["./entrypoint"]
