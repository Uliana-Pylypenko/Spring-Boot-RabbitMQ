# Użyj oficjalnego obrazu Javy jako obrazu bazowego
FROM openjdk:17-jdk-slim

# Ustaw katalog roboczy w kontenerze
WORKDIR /app

# Skopiuj plik JAR aplikacji do kontenera
COPY target/spring-boot-crud-rest-0.0.1-SNAPSHOT.jar app.jar

# Ustaw zmienną środowiskową dla JVM
ENV JAVA_OPTS=""

# Ustaw polecenie uruchamiające aplikację
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]

# Eksponuj port, na którym aplikacja będzie działać
EXPOSE 8080