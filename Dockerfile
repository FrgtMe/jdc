FROM ubuntu:latest

WORKDIR ERDEM

COPY . .

RUN apt update -y

RUN apt install sudo wget -y

ENTRYPOINT ["bash", "run.sh"]
