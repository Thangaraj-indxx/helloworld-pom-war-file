FROM adoptopenjdk/openjdk11:alpine-jre

WORKDIR /app

COPY target/hello-world-war-1.0.0.war /app/

EXPOSE 8010

CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "hello-world-war-1.0.0.war"]
