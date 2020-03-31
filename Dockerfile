# use maven docker image to copy source and build the application
FROM maven:3.6.3-jdk-11 AS build
WORKDIR /build
COPY ["pom.xml", "./"]
COPY ["./src", "./src"]
RUN mvn package

#use slim jre container to copy and execute the jar
FROM openjdk:11.0.6-jre-slim
LABEL author="Asif Maniar"
WORKDIR /app
COPY --from=build /build/target/springboot-demo-0.0.1-SNAPSHOT.jar springboot-demo.jar
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS 
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar springboot-demo.jar