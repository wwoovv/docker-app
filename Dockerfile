FROM ubuntu
EXPOSE 8080
WORKDIR /app
USER xysun

COPY entrypoint.sh ./

RUN apt-get update && apt-get install -y wget curl unzip iproute2 systemctl

ENTRYPOINT [ "/usr/bin/bash", "entrypoint.sh" ]
