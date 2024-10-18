# Use the base image as JDK 17
FROM openjdk:17-jdk-slim

# Create a directory inside the container to hold the application
RUN mkdir /app

# Copy the jar file and the required resources into the container
COPY target/pet-clinic-1.0.0.jar /app/pet-clinic-1.0.0.jar
COPY src/main/resources/application.properties /app/application.properties

# Set the working directory to /app
WORKDIR /app

# Expose the port the application will run on (4040)
EXPOSE 4040

# Run the Spring Boot application
CMD ["java", "-jar", "pet-clinic-1.0.0.jar", "--server.port=4040", "--spring.config.location=/app/application.properties"]
