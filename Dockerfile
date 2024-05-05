FROM --platform=linux/amd64 ubuntu:22.04 as base

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common ca-certificates &&\
    update-ca-certificates

RUN apt-get update -y &&\
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends curl gcc g++ gnupg unixodbc-dev openssl git &&\
    rm -rf /var/lib/apt/lists/*

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libssl-dev \
    libreadline-dev libffi-dev wget libbz2-dev libsqlite3-dev
RUN mkdir /python && cd /python
RUN wget https://www.python.org/ftp/python/3.11.1/Python-3.11.1.tgz
RUN tar -zxvf Python-3.11.1.tgz
RUN cd Python-3.11.1 && ls -lhR && ./configure --enable-optimizations && make install


COPY . /app
WORKDIR /app

ENTRYPOINT ["bash", "run.sh"]
