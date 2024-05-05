FROM ubuntu:latest

WORKDIR ERDEM

COPY . .

RUN apt update -y

RUN apt install sudo wget curl make -y

ENTRYPOINT ["bash", "run.sh"]
