# Java 17 runtime
FROM eclipse-temurin:17-jre

# Port de l'application (server.port=2222)
EXPOSE 2222

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier le JAR généré par Maven
COPY target/devOpsDemo-0.0.1-SNAPSHOT.jar app.jar

# Commande de démarrage
CMD ["java", "-jar", "app.jar"]
