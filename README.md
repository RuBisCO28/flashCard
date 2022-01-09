# flashCard
This flashcard app demonstrates Rails 7 with PostgreSQL, all running in Docker.

## Feature
- Ruby 3.1.0
- Rails 7
- PostgreSQL 13 database

## Setup
```
cp .env.example .env
docker compose build
docker compose run --rm web bin/rails db:setup
```

## Running the app
```
docker-compose up -d
```

## Reference
- https://docs.docker.com/samples/rails/
