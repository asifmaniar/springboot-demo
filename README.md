# Spring Boot Starter

Sample Starter Spring Boot App.


## Running using docker

 APP_ENV=development maps the container volume to the source code folder and auto-restarts app on code changes
 APP_ENV=production builds in a build container, copies the jar and runs in a light weight jre container

    export APP_ENV=development or export APP_ENV=production
    docker-compose build
    docker-compose up -d
    docker-compose stop