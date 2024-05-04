FROM ubuntu:latest

WORKDIR ERDEM

COPY . .

RUN apt update -y

RUN apt install sudo -y

RUN apt install wget curl -y

RUN wget https://www.python.org/ftp/python/3.10.5/Python-3.10.5.tar.xz

RUN tar -xf Python-3.10.5.tar.xz

RUN cd Python-3.10.5

RUN ./configure

RUN make

RUN sudo make install

RUN curl https://bootstrap.pypa.io/get-pip.py > pip.py

RUN python3 pip.py

ENTRYPOINT ["bash", "run.sh"]
