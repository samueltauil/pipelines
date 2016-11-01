## Notes

assuming nexus is provisioned https://github.com/samueltauil/nexus
assuming jenkins is provisioned or configured to auto-provision

create 3 project by web ui, dev, qa and ci-cd

1 - create the project called simpledemo using jboss-eap template
2 - add the build and deploy env vars of maven:
MAVEN_MIRROR_URL http://nexus.ci-cd.svc.cluster.local:8081/repository/maven-public/
3 - change the image stream url to the registry on dc of dev
4 - execute setroles passing the registry ip:port
5 - change dc of qa to always pull the image:
    imagePullPolicy: Always
6 - create the pipeline on ci-cd project
7 - execute the pipeline 
