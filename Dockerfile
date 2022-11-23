FROM gradle:4.2.1-jdk8-alpine
WORKDIR /app
ADD --chown=gradle:gradle build/libs/sdet-task.jar /app
RUN ./gradlew build --stacktrace