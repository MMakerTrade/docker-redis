#!/bin/bash -e

. /opt/mmakertrade/base/functions
. /opt/mmakertrade/base/helpers

print_welcome_page

if [[ "$1" == "/run.sh" ]]; then
  . /init.sh
  nami_initialize redis
  info "Starting redis... "
fi

exec tini -- "$@"