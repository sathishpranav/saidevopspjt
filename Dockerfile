FROM openjdk:17-jdk-slim
WORKDIR /app
# Copy the compiled .class file into the container
COPY HelloWorld.class /app/
CMD ["java", "HelloWorld"]
