pipeline {
  agent none
  stages {
    
    stage('Build') {
      agent {
        kubernetes {
          yaml readFile('./manifests/maven.yaml')
        }
      }
      steps {
        container('maven') {
          sh 'mvn --version'
        }
      }
    }
  }
}
