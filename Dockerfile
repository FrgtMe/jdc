FROM python:3.9
WORKDIR /APP
COPY . /APP
RUN apt update -y
RUN apt install sudo chromium chromium-driver -y
ENTRYPOINT ["bash", "run.sh"]
