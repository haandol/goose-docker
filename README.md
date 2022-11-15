# goose-docker

[docker hub](https://hub.docker.com/r/haandol/goose)

this repository is for dockerizing [goose](https://github.com/pressly/goose)

usage ref is here, [hexagonal saga](https://github.com/haandol/hexagonal-saga-architecture)

example of `docker-compose.yml`

```yml
  migrate:
    image: haandol/goose:3.7.0
    working_dir: /migrations
    volumes:
      - .:/migrations
    entrypoint: ["./scripts/migrate.sh", "up"]
```
