FROM python:3.9

WORKDIR /KELES

COPY . /KELES

ENTRYPOINT ["bash", "run.sh"]
