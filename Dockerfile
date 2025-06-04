FROM amazoncorretto:24
LABEL authors="leovuo"

WORKDIR /usr/src/app
RUN yum update -y && \
    yum install -y maven

COPY pom.xml .
COPY src ./src

RUN mvn clean package

ENTRYPOINT ["java", "-jar", "target/ToyProjectForDocker-1.0-SNAPSHOT.jar"]
