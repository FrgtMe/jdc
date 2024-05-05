FROM --platform=linux/amd64 ubuntu:22.04 as base

USER root

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DEBIAN_FRONTEND noninteractive

# is this step really necessary? there shouldn't be anything in /tmp
# RUN find /tmp -name \*.deb -exec rm {} +

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common ca-certificates &&\
    update-ca-certificates

RUN apt-get update &&\
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends curl gcc g++ gnupg unixodbc-dev openssl git &&\
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get upgrade
RUN apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libssl-dev \
    libreadline-dev libffi-dev wget libbz2-dev libsqlite3-dev
RUN mkdir /python && cd /python
RUN wget https://www.python.org/ftp/python/3.11.1/Python-3.11.1.tgz
RUN tar -zxvf Python-3.11.1.tgz
RUN cd Python-3.11.1 && ls -lhR && ./configure --enable-optimizations && make install


COPY . /app
WORKDIR /app

COPY ZscalerCertificate.crt /usr/local/share/ca-certificates/ZscalerCertificate.crt
