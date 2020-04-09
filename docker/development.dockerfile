#For development use maven container to package and run code directly from the source folder
FROM maven:3.6.3-jdk-11 AS build
LABEL author="Asif Maniar"
WORKDIR /app

ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS 

#app runs on 8080
EXPOSE 8080

ENTRYPOINT exec mvn spring-boot:run

# Build the image using:
# docker build -t [your_image_name] .

# Run the image using:
# docker run -p 8000:8080 -v $(pwd):/app springboot-starter
# http://localhost:8000
