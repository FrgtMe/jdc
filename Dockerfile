FROM ubuntu:latest

WORKDIR ERDEM

COPY . .

RUN apt update -y

RUN apt install sudo -y

RUN apt install python3-pip -y

ENTRYPOINT ["bash", "run.sh"]
