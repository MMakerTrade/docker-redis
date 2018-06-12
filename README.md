[![Circle CI](https://circleci.com/gh/mmakertrade/docker-redis.svg?style=shield)](https://circleci.com/gh/mmakertrade/docker-redis)

# Redis

Ready-to-run Docker image with Redis.

## Running in Development

```bash
$ docker run --name redis -e ALLOW_EMPTY_PASSWORD=yes mmakertrade/redis:latest
```

or using Docker Compose:

```yaml
version: '2'

services:
  redis:
    image: 'mmakertrade/redis:latest'
    environment:
      - ALLOW_EMPTY_PASSWORD=yes
    ports:
      - '6379:6379'
```

## Running in Production

```bash
$ docker run --name redis -e REDIS_PASSWORD=password123 mmakertrade/redis:latest
```

or using Docker Compose:

```yaml
version: '2'

services:
  redis:
    image: 'mmakertrade/redis:latest'
    ports:
      - '6379:6379'
    environment:
      - REDIS_PASSWORD=password123
```

## Building

```bash
$ ./build.sh 4.0
```