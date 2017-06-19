FROM alpine:3.6

RUN apk add --update curl \
	&& rm -rf /var/cache/apk/*

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/usr/sbin/crond","-f","-d","5"]
