#For development use maven container to package and run code directly from the source folder
FROM maven:3.6.3-jdk-11 AS build
LABEL author="Asif Maniar"
WORKDIR /app

ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS 

EXPOSE 8080

ENTRYPOINT exec java $JAVA_OPTS -jar target/springboot-demo-0.0.1-SNAPSHOT.jar

# Build the image using:
# docker build -t [your_image_name] .

# Run the image using:
# docker run -p 8000:8080 -v $(pwd):/app springboot-demo

