FROM eclipse-temurin:17-jdk-focal
ADD target/messaging-rabbitmq-0.0.1-SNAPSHOT.jar messaging-rabbitmq-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "messaging-rabbitmq-0.0.1-SNAPSHOT.jar"] 
