# Build stage: Use Eclipse Temurin 24 with Alpine for building
FROM eclipse-temurin:24-alpine as builder

WORKDIR /usr/src/app

# Install Maven
RUN apk add --no-cache maven

COPY pom.xml .
COPY src ./src

RUN mvn clean package

# Runtime stage: Use Eclipse Temurin 24 with Alpine for running
FROM eclipse-temurin:24-alpine

# Create non-root user and group
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /usr/src/app

# Copy the jar from the build stage
COPY --from=builder /usr/src/app/target/ToyProjectForDocker-1.0-SNAPSHOT.jar ./app.jar

# Change ownership to appuser
RUN chown -R appuser:appgroup /usr/src/app

USER appuser

ENTRYPOINT ["java", "-jar", "app.jar"]
