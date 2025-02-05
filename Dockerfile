FROM ubuntu:latest
LABEL authors="Anya"

WORKDIR /
COPY . .
RUN apt update
RUN apt install python3-pip -y
RUN chmod +x /install.sh
RUN /install.sh

ENTRYPOINT ["/bin/sh", "/run.sh"]