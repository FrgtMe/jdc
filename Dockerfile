FROM --platform=linux/amd64 alpine:latest

WORKDIR /WORK

COPY . /WORK

RUN apt update -y

RUN apt install python3-pip sudo npm chromium chromium-driver curl -y

ENTRYPOINT ["bash", "run.sh"]
