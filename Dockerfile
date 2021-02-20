FROM gradle:6.8.2-jdk8 as builder

COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build

FROM openjdk:8

ENV ARTIFACT-NAME = docker-demo-0.0.1-SNAPSHOT

ENV APP_HOME=/usr/app

WORKDIR $APP_HOME

COPY --from=builder home/gradle/src/build/libs/docker-demo-0.0.1-SNAPSHOT.jar .

CMD ["java", "-Xdebug", "-Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8000", "-jar", "docker-demo-0.0.1-SNAPSHOT.jar"]