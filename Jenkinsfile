pipeline {
  agent none
  stages {    
    stage('Build') {
      agent  {
        kubernetes {
         yamlFile('manifests/maven.yaml')
        }
      }
      steps {
        container('maven') {
          sh 'mvn package --file DSpace-dspace-8.1/dspace/pom.xml'
        }
      }
    }
  }
}
