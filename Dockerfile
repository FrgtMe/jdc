FROM ubuntu:latest

WORKDIR ERDEM

COPY . .

RUN apt update -y

RUN apt install sudo -y

RUN sudo apt install python==3.9

ENTRYPOINT ["bash", "run.sh"]
