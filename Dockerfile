FROM adoptopenjdk/openjdk8

WORKDIR /app

COPY target/jdconf-demo*.jar jdconf-demo.jar

ENTRYPOINT java -jar jdconf-demo.jar
