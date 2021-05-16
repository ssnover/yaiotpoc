# syntax=docker/dockerfile:1
FROM ubuntu:latest

WORKDIR /apps

RUN apt update && apt install -y supervisor python3-pip
RUN python3 -m pip install -r /apps/scripts/caseta-button-event-listener/requirements.txt
RUN mkdir -p /var/log/supervisor

CMD ["/usr/bin/supervisord", "-c", "/apps/supervisord.conf"]