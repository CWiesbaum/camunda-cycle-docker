# camunda-cycle-docker
Repository provides a Dockerfile in order to run Camunda Cycle Tomcat Distribution on a Docker environment.

## [camunda services GmbH]{https://camunda.com} about Camunda Cycle
With Cycle you can synchronize the BPMN diagrams in your business analyst’s BPMN tool with the technically executable BPMN 2.0 XML files your developers edit with their modeler (e.g., the Camunda Modeler). Depending on your tool we can realize forward- and a reverse engineering, while you can store your BPMN 2.0 XML files in different repositories (e.g., SVN, file system or FTP servers).

## Download Camunda Cycle
Camunda Cycle can be downloaded for free.

https://camunda.org/release/camunda-cycle/tomcat/3.1/

# Usage
Within this section general usage is described. For official documentation see [Camunda's documentation]{https://docs.camunda.org/manual/7.8/installation/cycle/}.

## Starting Camunda Cycle in Docker
```shell
docker run --name camunda-cycle -p 8180:8180 camunda-cycle
```
