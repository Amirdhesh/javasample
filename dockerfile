# Use official OpenJDK 17 as base image
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the Java source file from host to container
COPY sample.java .

# Compile the Java file
RUN javac Sample.java

# Command to run the Java program
CMD ["java", "Sample"]