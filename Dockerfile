FROM openjdk:8-alpine

COPY build/libs/*.jar /demo.jar

CMD ["java", "-Xdebug", "-Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8000", "-jar", "demo.jar"]