FROM openjdk:8-jdk-alpine

MAINTAINER Suraj Bodade <suraj.bodade@zemosolabs.com>

volume /tmp

COPY target/springboot-springdata-elasticsearch-example-1.0.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]