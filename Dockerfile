FROM openjdk:8u151-jdk-alpine3.7

EXPOSE 8081

ENV APP_HOME /usr/src/app

COPY target/shopping-cart-0.0.1-SNAPSHOT.war $APP_HOME/app.war

WORKDIR $APP_HOME

ENTRYPOINT exec java -war app.war
