# Spring Boot Sample

Sample Spring Boot App.


## Docker Postgres Setup using Docker

Create Docker container with Postgres database:

    docker create --name postgres-demo -e POSTGRES_PASSWORD=Welcome -p 5432:5432 postgres:11.5-alpine

Start container:

    docker start postgres-demo

Stop container:

    docker stop postgres-demo

Connection Info:

    JDBC URL: `jdbc:postgresql://localhost:5432/postgres`

    Username: `postgres`

    Password: `Welcome`
    
    
## Installation

Set the postgres database url as a DB_URL env variable