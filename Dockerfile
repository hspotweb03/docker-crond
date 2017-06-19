FROM alpine:3.6

RUN apk add --update curl \
	&& rm -rf /var/cache/apk/* \
	&& touch /etc/crontab && crontab /etc/crontab

CMD ["/usr/sbin/crond","-f","-l","5"]
