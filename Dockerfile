# Stage 1: Build the application using Maven
FROM maven:3.8.5-openjdk-11 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Run the application with a slim JRE
FROM openjdk:11-jre-slim
WORKDIR /app
# Copy only the built jar from stage 1
COPY --from=build /app/target/HotelManagement-1.0.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]

