FROM grafana/grafana:10.2.2

USER root

RUN apk update && apk add --no-cache libcap tzdata
# RUN setcap 'cap_net_bind_service=+ep' /usr/share/grafana/bin/grafana-server
