FROM npm:latest

RUN apt update -y

RUN apt install python3-pip -y

RUN npm i pm2 -g

ENTRYPOINT ["bash", "run.sh"]
