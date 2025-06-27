# ✅ Use a valid Maven + OpenJDK image
FROM maven:3.8.5-openjdk-11

# Set working directory
WORKDIR /app

# Copy all project files into the container
COPY . .

# Compile the Java code
RUN mvn clean compile

# Run the Java app using exec plugin
CMD ["mvn", "exec:java"]

