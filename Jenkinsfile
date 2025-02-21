pipeline {
  agent none
  
  stages {
    stage('Run maven') {
      agent {
        kubernetes {
          yamlFile('manifests/maven.yaml')
        }
      }
      steps {
        container('maven') {
          sh 'mvn -version'
        }
      }
    }
  }
}