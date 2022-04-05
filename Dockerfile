FROM alpine:3.15.4

# https://github.com/opencontainers/image-spec/blob/master/annotations.md
LABEL org.opencontainers.image.authors="Michael Nival" \
	org.opencontainers.image.url="https://github.com/mnival/docker-lsyncd/" \
	org.opencontainers.image.documentation="https://github.com/mnival/docker-lsyncd/" \
	org.opencontainers.image.source="https://github.com/mnival/docker-lsyncd/" \
	org.opencontainers.image.description="Alpine image with lsyncd and openssh-client"
	
RUN set -ex; \
	apk upgrade --no-cache --update; \
	apk add --no-cache \
    lsyncd \
    openssh-client \
  ;
	
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod u+x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/etc/lsyncd/lsyncd.conf.lua"]
