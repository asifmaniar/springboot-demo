# Spring Boot Sample

Sample Spring Boot App.


## Running using docker compose

 Build and locally with auto-restarts (containers volume mapped to source folder)
    
    docker-compose build
    docker-compose up -d
    docker-compose stop


Production build
    docker build -f prod.dockerfile -t springboot-demo .
    docker run -p 8000:8080 springboot-demo
    
Running as a container with volume mapped to the current working directory. Package the app with `mvn package` before running.

    docker run -p 8000:8080 -v $(pwd):/app -w "/app" openjdk:11.0.6-jre-slim java -jar target/springboot-demo-0.0.1-SNAPSHOT.jar


    
## Configuration

Set the postgres database url as a DB_URL env variable