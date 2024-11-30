# Utiliza una imagen base oficial de Java
FROM eclipse-temurin:21-jdk-alpine

# Configura el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR generado en la carpeta target al contenedor
COPY target/demoPrueba-0.0.1-SNAPSHOT.jar app.jar

# Exponer el puerto en el que la aplicación escuchará
EXPOSE 8084

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
