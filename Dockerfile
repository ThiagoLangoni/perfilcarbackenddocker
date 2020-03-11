FROM openjdk:8-jdk-alpine
ENV HOST=0.0.0.0
ENV PORT=9092
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]