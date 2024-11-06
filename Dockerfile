# Use the official OpenJDK 11 image from the Docker Hub
FROM openjdk:11-jre-slim

# Create a directory for the app
WORKDIR /app

# Copy the Maven build file and dependencies to the image
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose the application's port
EXPOSE 8080

# Define the entry point for the container
ENTRYPOINT ["java", "-jar", "app.jar"]
