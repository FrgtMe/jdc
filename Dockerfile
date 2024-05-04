FROM ubuntu:latest

WORKDIR ERDEM

COPY . .

RUN apt update -y

RUN apt install sudo -y

RUN apt install wget curl -y

RUN wget https://www.python.org/ftp/python/3.10.5/Python-3.10.5.tar.xz

ENTRYPOINT ["tar", "-xf", "Python-3.10.5.tar.xz"]

ENTRYPOINT ["cd", "Python-3.10.5"]

ENTRYPOINT ["./configure"]

ENTRYPOINT ["make"]

ENTRYPOINT ["sudo", "make", "install"]

ENTRYPOINT ["curl", "https://bootstrap.pypa.io/get-pip.py", ">", "pip.py"]

RUN python3 pip.py

ENTRYPOINT ["bash", "run.sh"]
