# camunda-cycle-docker
Repository provides a Dockerfile in order to run Camunda Cycle Tomcat Distribution on a Docker environment.

## [camunda services GmbH](https://camunda.com) about Camunda Cycle
With Cycle you can synchronize the BPMN diagrams in your business analyst’s BPMN tool with the technically executable BPMN 2.0 XML files your developers edit with their modeler (e.g., the Camunda Modeler). Depending on your tool we can realize forward- and a reverse engineering, while you can store your BPMN 2.0 XML files in different repositories (e.g., SVN, file system or FTP servers).

## Download Camunda Cycle
Camunda Cycle can be downloaded for free.

https://camunda.org/release/camunda-cycle/tomcat/3.1/

# Usage
Within this section general usage is described. For official documentation see [Camunda's documentation](https://docs.camunda.org/manual/7.8/installation/cycle/).

## Starting Camunda Cycle in Docker
```shell
docker run --name camunda-cycle -p 8180:8180 camunda-cycle
```

## Database Configuration
Cycle's standard configuration includes an in-memory H2 database. [Camunda's documentation](https://docs.camunda.org/manual/7.8/installation/cycle/) describes how to configure external databases:

1. Copy your JDBC database driver JAR file to $TOMCAT_HOME/lib.
2. Open $TOMCAT_HOME/webapps/cycle/META-INF/context.xml and edit the properties of the jdbc/CycleDS datasource definition.

This configuration can be achieved using Docker bind mounts. The desired JDBC driver as well as the modified "context.xml" file have to be accessible on the Docker host.

```shell
docker run --name camunda-cycle -p 8180:8180 -v <HOST_PATH_TO_CONTEXT_FILE>:/opt/camunda-cycle/server/apache-tomcat-7.0.50/webapps/cycle/META-INF/context.xml -v <HOST_PATH_TO_JDBC_DRIVER_JAR>:/opt/camunda-cycle/server/apache-tomcat-7.0.50/lib/<JDBC_DRIVER_NAME>.jar camunda-cycle
```
