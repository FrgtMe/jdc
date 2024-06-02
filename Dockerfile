FROM --platform=linux/amd64 ubuntu:22.04

WORKDIR /WORK

COPY . /WORK

RUN apt update -y

RUN apt install python3-pip -y

RUN apt install sudo npm -y

ENTRYPOINT ["bash", "run.sh"]
