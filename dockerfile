FROM tomcat:8.0
RUN apt update && apt install -y maven
RUN apt install -y git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello boxfuse
WORKDIR boxfuse
RUN mvn package
RUN cp /usr/local/tomcat/boxfuse/target/hello-1.0.war /usr/local/tomcat/webapps
EXPOSE 8080
