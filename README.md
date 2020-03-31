# Spring Boot Sample

Sample Spring Boot App.


## Running using docker manually

Create Docker container with Postgres database:

    docker create --name postgres-demo -e POSTGRES_PASSWORD=Welcome -p 5432:5432 postgres:11.5-alpine

Connection Info:

    JDBC URL: `jdbc:postgresql://localhost:5432/postgres`

    Username: `postgres`

    Password: `Welcome`

Start Postgres

    docker start postgres-demo

 Build and run docker image
    
    mvn package
    docker build -t sprintboot-demo .
    docker run -p 8000:8080 springboot-demo
    
Running as a container with volume mapped to the current working directory. Package the app with `mvn package` before running.

    docker run -p 8000:8080 -v $(pwd):/app -w "/app" openjdk:11.0.6-jre-slim java -jar target/springboot-demo-0.0.1-SNAPSHOT.jar

    
    
## Installation

Set the postgres database url as a DB_URL env variable