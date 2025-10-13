FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository universe && \
    apt-get update && \
    apt-get install -y tmate openssh-client && \
    apt-get clean

CMD ["tmate", "-F"]