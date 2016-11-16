FROM alpine:3.4
MAINTAINER adolphlwq kenan3015@gmail.com

RUN apk update && apk add supervisor
COPY supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
