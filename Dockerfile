FROM bitnami/minideb-extras:jessie-r73
LABEL maintainer "MMakerTrade <containers@mmaker.trade>"

ENV BITNAMI_PKG_CHMOD="-R g+rwX" \
    HOME="/"

# Install required system packages and dependencies
RUN bitnami-pkg unpack redis-4.0.9-1 --checksum 9660d6d127da0e49fa7fb9c1858f9b2630e61c4f85721d60593c65781d4be451

COPY rootfs /
ENV ALLOW_EMPTY_PASSWORD="no" \
    PATH="/opt/bitnami/redis/bin:$PATH" \
    REDIS_DISABLE_COMMANDS="" \
    REDIS_MASTER_HOST="" \
    REDIS_MASTER_PASSWORD="" \
    REDIS_MASTER_PORT_NUMBER="6379" \
    REDIS_PASSWORD="" \
    REDIS_REPLICATION_MODE=""

EXPOSE 6379

USER 1001
ENTRYPOINT ["/app-entrypoint.sh"]
CMD ["/run.sh"]