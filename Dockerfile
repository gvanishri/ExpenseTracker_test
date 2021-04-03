FROM openjdk:8-jre-alpine3.9

MAINTAINER gvanitha.shri@gmail.com

USER root

RUN mkdir -p /root/ExpenseTracker/Workdir

WORKDIR /root/ExpenseTracker/Workdir

VOLUME /root/ExpenseTracker/Workdir

ADD target/ExpenseTracker-Spring-1.0-SNAPSHOT.jar /root/ExpenseTracker/Workdir/ExpenseTracker-Spring-1.0-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT ["/usr/bin/java","-jar","/root/ExpenseTracker/Workdir/ExpenseTracker-Spring-1.0-SNAPSHOT.jar"]
