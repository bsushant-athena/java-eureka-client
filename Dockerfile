#FROM java:8
#EXPOSE 8080
#ADD /target/java-eureka-client-0.0.1-SNAPSHOT.jar java-eureka-client-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java","-jar","java-eureka-client-0.0.1-SNAPSHOT.jar"]

#FROM java:8
#
## Install maven
#RUN apt-get update
#RUN apt-get install -y maven
#
#WORKDIR /code
#
## Prepare by downloading dependencies
#ADD pom.xml /code/pom.xml
#RUN ["mvn", "dependency:resolve"]
#RUN ["mvn", "verify"]
#
## Adding source, compile and package into a fat jar
#ADD src /code/src
#RUN ["mvn", "package"]
#
#EXPOSE 4567
#CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar", "target/sparkexample-jar-with-dependencies.jar"]
#
#FROM openjdk
#
#EXPOSE 3100
#
#CMD ["/usr/bin/java", \
#	"-Xms256M", \
#	"-Xmx256M", \
#	"-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1044", \
#	"-jar", "/usr/local/athena/gateway-service.jar"]