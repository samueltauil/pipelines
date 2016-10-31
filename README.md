## Notes
- `oc cluster up`
- Provision a Jenkins instance.
- Install the **Pipeline Maven Plugin** to Jenkins.
- Configure Java and Maven: `Manage Jenkins -> Configure System`.
  - In **Global properties** add a new environment variable `JAVA_HOME` with value from `java.home` attribute on `Manage Jenkins -> System Information`.
  - In **JDK** add a new installer.
  - In **Maven** add a new installer and name it **M3**.
- Check if the Image Streams for xpaas are installed.
  - If not load them by using this file https://github.com/jboss-openshift/application-templates/blob/master/jboss-image-streams.json with the command:
  `oc create -f jboss-image-streams.json`
- Create the Build Config for the application:
  `oc create -f resources/bc-sample.json`


- Configure Java and Maven: `Manage Jenkins -> Configure System`.
  - In **Global properties** add a new environment variable `JAVA_HOME` with value from `java.home` attribute on `Manage Jenkins -> System Information'.
  - In **JDK** add a new installer.
  - In **Maven** add a new installer and name it **M3**.
- Execute `oc create -f resources/pipeline-sample.yml`.

assuming nexus is provisioned https://github.com/samueltauil/nexus
assuming jenkins ephemeral is provisioned

create 3 project by web ui, dev, qa and ci-cd
 
