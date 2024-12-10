# Use uma imagem base com suporte ao JDK 21
FROM eclipse-temurin:21-jdk

WORKDIR /app

# Copie o código do projeto para o container
COPY . /app

# Torne o Maven Wrapper executável
RUN chmod +x ./mvnw

# Execute o build do projeto
RUN ./mvnw clean install -DskipTests

# Execute o JAR gerado
CMD ["java", "-jar", "target/dslist-0.0.1-SNAPSHOT.jar"]