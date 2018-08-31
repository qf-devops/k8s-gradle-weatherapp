FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD gradle-weatherapp/weatherapp/build/libs/*.jar app.jar

ENV JAVA_OPTS=""
ENV SPRING_PROFILE="default"

ENTRYPOINT exec java $JAVA_OPTS \
 -Djava.security.egd=file:/dev/./urandom \
 -Dspring.profiles.active=$SPRING_PROFILE \
 -jar app.jar
