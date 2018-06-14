FROM openjdk:8-jre
VOLUME /tmp
EXPOSE 8180
ADD ./camunda-cycle-distro-3.1.0.zip /camunda-cycle-distro.zip
RUN unzip -d /opt/camunda-cycle /camunda-cycle-distro.zip
ENTRYPOINT [ "sh", "-c", "/opt/camunda-cycle/server/apache-tomcat-7.0.50/bin/catalina.sh run" ]
