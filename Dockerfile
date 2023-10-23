FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
x11-apps \ 
xauth \
openjdk-11-jre\ 
&& rm -rf /var/lib/apt/lists/*

WORKDIR /new-app

COPY calc.jar /new-app/

CMD [ "java", "-jar", "/new-app/calc.jar" ]