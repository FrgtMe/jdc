FROM ubuntu:latest

WORKDIR ERDEM

COPY . .

RUN apt update -y

RUN apt install python3-pip -y --break-system-packages

ENTRYPOINT ["bash", "run.sh"]
