FROM ubuntu:latest

WORKDIR ERDEM

COPY . .

RUN apt update -y

RUN apt install sudo -y

RUN sudo add-apt-repository ppa:deadsnakes/ppa

RUN sudo apt-get update

RUN sudo apt-get install python3.9

ENTRYPOINT ["bash", "run.sh"]
