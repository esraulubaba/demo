# İmajın temel olarak hangi imajdan türetileceğini belirtin
FROM alpine:latest

# İmajda çalışacak komutları ekleyin
RUN apk add --update bash


FROM openjdk:21
ADD target/demo.jar demo.jar
ENTRYPOINT ["java","-jar","/demo.jar"]