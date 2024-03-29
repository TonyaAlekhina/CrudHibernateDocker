FROM ubuntu:latest
LABEL authors="Xiaomi"

ENTRYPOINT ["top", "-b"]

FROM openjdk:17-jdk-alpine

COPY target/demo-0.0.1-SNAPSHOT.jar app-1.0.0.jar

ENTRYPOINT [ "java", "-jar", "app-1.0.0.jar" ]
