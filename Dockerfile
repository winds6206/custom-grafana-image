FROM grafana/grafana:8.3.1

MAINTAINER Tony_Jhang

USER root

RUN apk update && apk add --no-cache libcap tzdata
RUN setcap 'cap_net_bind_service=+ep' /usr/share/grafana/bin/grafana-server
