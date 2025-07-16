# Use Maven with Java 17 (compatible with Jenkins plugins)
FROM maven:3.9.6-eclipse-temurin-17

# Set working directory inside the container
WORKDIR /saml-plugin

# Copy plugin source code into container
COPY . .

# Run Maven tests (includes jenkins-test-harness-based tests)
CMD ["mvn", "test"]
