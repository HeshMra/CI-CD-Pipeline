# Use an official OpenJDK image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/CI_CD-Pipeline-0.0.1-SNAPSHOT.jar /app/CI_CD-Pipeline-0.0.1-SNAPSHOT.jar

# Expose the port that your Spring Boot app runs on
EXPOSE 8090

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "/app/CI_CD-Pipeline-0.0.1-SNAPSHOT.jar"]
