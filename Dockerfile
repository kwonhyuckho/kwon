# Use an official OpenJDK runtime as a parent image
FROM harbor.tst.console.trombone.okestro.cloud/library/maven:3.8.5-jdk-17

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/member-management-service-1.0-SNAPSHOT.jar member-management-service.jar

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "member-management-service.jar"]
