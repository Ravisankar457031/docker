FROM amazonlinux:2
MAINTAINER Ravisankar
RUN yum -y update \
&& amazon-linux-extras enable corretto8 \
&& yum -y install java-1.8.0-amazon-corretto-devel \
&& yum clean all
#COPY MeterRead-0.0.1-SNAPSHOT-spring-boot.jar /root/test/MeterRead-0.0.1-SNAPSHOT-spring-boot.jar
#CMD ["java","-jar","/root/test/MeterRead-0.0.1-SNAPSHOT-spring-boot.jar"]
EXPOSE 8080
