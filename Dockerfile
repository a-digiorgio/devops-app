FROM maven:3.9-eclipse-temurin-21

WORKDIR /app

COPY . .

RUN mvn clean package -DskipTests

# Espone la porta
EXPOSE 8080

#comando per eseguire l'applicazione
cmd ["java", "-jar", "target/devops-app-0.0.1-SNAPSHOT.jar"]