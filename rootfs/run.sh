#!/bin/bash
. /opt/mmakertrade/base/functions
. /opt/mmakertrade/base/helpers

USER=redis
DAEMON=redis-server
EXEC=$(which $DAEMON)
ARGS="/opt/mmakertrade/redis/conf/redis.conf --daemonize no"

# configure extra command line flags
if [[ -n "$REDIS_EXTRA_FLAGS" ]]; then
    ARGS+=" $REDIS_EXTRA_FLAGS"
fi

# log output to stdout
sed -i 's/^logfile /# logfile /g' /opt/mmakertrade/redis/conf/redis.conf

# If container is started as `root` user
if [ $EUID -eq 0 ]; then
    exec gosu ${USER} ${EXEC} ${ARGS}
else
    exec ${EXEC} ${ARGS}
fi