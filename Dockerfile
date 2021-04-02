FROM openjdk:8-jre-alpine3.9

MAINTAINER gvanitha.shri@gmail.com

WORKDIR /

ADD target/ExpenseTracker-Spring-1.0-SNAPSHOT.jar ExpenseTracker-Spring-1.0-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","ExpenseTracker-Spring-1.0-SNAPSHOT.jar"]
