FROM maven:3.8.5-openjdk-18
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /steamstar_admin.jar
COPY src/main/resources/application.yaml /application.yaml
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/steamstar_admin.jar", "--spring.config.location=file:/application.yaml"]
