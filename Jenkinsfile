pipeline {
  agent none
  stages {
    stage('Build') {
      agent {
        kubernetes {
          yaml readFile('manifests/maven.yaml') // This line needs to be inside the node block
        }
      }
      steps {
        node('building') { // Add the node block here
          checkout scm
          container('maven') {
            sh 'mvn --version'
          }
        }
      }
    }
  }
}