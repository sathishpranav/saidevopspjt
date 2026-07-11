
# Use the official Eclipse Temurin Java 17 image
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy your compiled HelloWorld class file into the container
COPY HelloWorld.class /app/

# Command to run the application
CMD ["java", "HelloWorld"]

