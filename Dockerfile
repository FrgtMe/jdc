FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install wget systemd -y

RUN wget http://portal.vodia.com/downloads/pbx/install-debian.sh

RUN chmod a+rx install-debian.sh

CMD ["/bin/sh", "install-debian.sh"]
