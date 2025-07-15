# Use official OpenJDK 17 runtime as base image
FROM eclipse-temurin:17-jdk-alpine

# Set environment variables
ENV APP_HOME=/app
WORKDIR $APP_HOME

# Copy the jar file built by Maven
COPY target/demo-workshop-2.0.2.jar app.jar

# Expose the application port (adjust if needed)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
