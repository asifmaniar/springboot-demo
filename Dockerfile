FROM openjdk:11.0.6-jre-slim
LABEL author="Asif Maniar"
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS 
ADD target/springboot-demo-0.0.1-SNAPSHOT.jar springboot-demo.jar
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar springboot-demo.jar
#ENTRYPOINT exec java $JAVA_OPTS -jar springboot-demo.jar