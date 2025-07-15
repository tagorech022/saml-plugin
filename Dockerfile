# Use a lightweight Java 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the image
# Update the filename below if your actual JAR name is different
COPY target/demo-workshop-2.0.2.jar app.jar

# Expose the application's port (adjust if needed)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
