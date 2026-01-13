# Use OpenJDK 17
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Build the app
RUN ./mvnw clean package -DskipTests

# Set the entrypoint
ENTRYPOINT ["java","-jar","target/AgrowMartBackend-0.0.1-SNAPSHOT.jar"]
