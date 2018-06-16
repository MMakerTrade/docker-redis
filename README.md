[![Build Status](https://travis-ci.org/MMakerTrade/docker-redis.svg?branch=master)](https://travis-ci.org/MMakerTrade/docker-redis)

# Redis

Ready-to-run Docker image with Redis.

## Quickstart

```bash
$ docker run --name redis -e mmakertrade/redis:latest
```

or using Docker Compose:

```yaml
version: '2'

services:
  redis:
    image: 'mmakertrade/redis:latest'
    ports:
      - '6379:6379'
```

## Building

```bash
$ ./build.sh latest
```