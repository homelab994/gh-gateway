# -------- BUILD STAGE --------
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# -------- PACKAGE STAGE --------
FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
COPY --from=build /app/target/*.jar gh-gateway.jar
EXPOSE 9099
ENTRYPOINT ["java","-jar","gh-gateway.jar"]