FROM alpine:3.6

RUN apk add --update curl \
	&& rm -rf /var/cache/apk/* \
	&& crontab /etc/crontab

CMD ["/usr/sbin/crond","-f","-l","5"]
