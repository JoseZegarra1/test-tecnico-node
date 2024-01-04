FROM openjdk:11

WORKDIR /app

COPY /target/test-tecnico-0.0.1-SNAPSHOT.jar /app

EXPOSE 8082

CMD ["java" ,"-jar","test-tecnico-0.0.1-SNAPSHOT.jar"]