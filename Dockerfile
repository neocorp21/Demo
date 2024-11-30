# Etapa 1: Construcción
FROM eclipse-temurin:21-jdk-alpine AS build
WORKDIR /app
COPY . .
RUN chmod +x mvnw && ./mvnw clean package -DskipTests

# Etapa 2: Imagen mínima para producción
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=build /app/target/demoPrueba-0.0.1-SNAPSHOT.jar app.jar

# Reducir superficie de ataque
USER nobody:nobody
EXPOSE 8084

ENTRYPOINT ["java", "-jar", "app.jar"]
