
# Usar la imagen oficial de OpenJDK 17
FROM openjdk:17-jdk-slim

# Instalar Maven
RUN apt-get update && apt-get install -y maven && apt-get clean

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el código fuente al contenedor
COPY . /app

# Ejecutar Maven para empaquetar la aplicación
RUN mvn clean package -DskipTests

# Exponer el puerto 8080 para acceder a la aplicación
EXPOSE 8080

# Establecer el comando por defecto para ejecutar la aplicación
CMD ["java", "-jar", "target/app-0.0.1-SNAPSHOT.jar"]
