# Jore GraphQL server

### Prerequisites

Start a postgis docker container:
```
docker run --name jore-history-postgis -e POSTGRES_PASSWORD=mysecretpassword -d mdillon/postgis
```

Import data using [jore-history-graphql-import](https://github.com/HSLdevcom/jore-history-graphql-import)

### Install

Build the container:
```
docker build -t hsldevcom/jore-history-graphql .
```

### Run

Start the server:
```
docker run --link jore-history-postgis -e "PG_CONNECTION_STRING=postgres://postgres:mysecretpassword@jore-history-postgis:5432/postgres" -d -p 0.0.0.0:5050:5000 hsldevcom/jore-history-graphql
```
