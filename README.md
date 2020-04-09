# Spring Boot Starter

Sample Starter Spring Boot App. Runs at http://localhost:8080


## Building docker images

 APP_ENV=development maps the container volume to the source code folder and auto-restarts app on code changes
 APP_ENV=production builds in a build container, copies the jar and runs in a light weight jre container

    export APP_ENV=development or export APP_ENV=production
    docker-compose build

## Deploying using docker compose

    docker-compose up -d
    docker-compose stop

## Deploying to Kubernetes

    docker login
    docker push [namespace]/springboot-starter
    kubectl apply -f ./.k8s 
    kubectl get pods
    kubectl port-forward springboot-starter-XXX 8080:8080
