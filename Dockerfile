# syntax=docker/dockerfile:1

# Utilisation d'une image officielle Java JRE (OpenJDK ou Temurin)
FROM maven
WORKDIR /build
COPY ./* .
RUN  mvn package

# Définir le répertoire de travail dans l'image Docker
WORKDIR /app

# Copier le fichier JAR généré dans le répertoire de travail du conteneur
RUN mv /build/target/maSuperAppJava-1.0-SNAPSHOT.jar /app/maSuperAppJava-1.0-SNAPSHOT.jar

# Spécifier le point d'entrée pour le conteneur Docker : exécuter l'application Java avec des arguments
ENTRYPOINT ["java", "-jar", "maSuperAppJava-1.0-SNAPSHOT.jar"]

# Facultatif : définir les arguments par défaut (si vous ne les passez pas en ligne de commande)
# Si vous voulez que Docker prenne ces arguments par défaut (par exemple, 4 et 7)
# CMD ["4", "7"]
