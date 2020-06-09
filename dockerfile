FROM tomcat
RUN apt update && apt install -y maven
RUN apt install -y git
RUN apt -y default-jdk
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello boxfuse
WORKDIR boxfuse
RUN mvn package
RUN cp /usr/local/tomcat/boxfuse/target/hello-1.0.war /usr/local/tomcat/webapps
EXPOSE 8080

# IP adress 123.43.2.112:8080/hello-1.0
