FROM openjdk:8-jdk-alpine
ENV HOST=0.0.0.0
ENV PORT=9092
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT exec java $JAVA_OPTS -jar /app.jar