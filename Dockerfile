#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
run mkdir /app
COPY --from=build /home/app/target/orders-service-example-0.0.1-SNAPSHOT-spring-boot.jar /app/demo.jar
EXPOSE 8080
CMD java -jar /app/demo.jar http://payments:8080 http://shipping:8080 http://products:8080
