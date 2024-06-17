FROM --platform=linux/amd64 debian:22.04

WORKDIR /WORK

COPY . /WORK

RUN apt update -y

RUN apt install python3-pip sudo npm chromium chromium-driver curl -y

ENTRYPOINT ["bash", "run.sh"]
