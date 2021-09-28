FROM openjdk:17-ea-11-jdk-slim
VOLUME /tmp
# target파일에 jar파일 복
COPY target/discoveryService-1.0.jar DiscoveryService.jar
# 해당 도커 이미지 시작되면 시작되는 명령어 : jar 실행
ENTRYPOINT ["java","-jar","DiscoveryService.jar"]