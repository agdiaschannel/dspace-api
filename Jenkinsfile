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
        node { // Add the node block here
          container('maven') {
            sh 'mvn --version'
          }
        }
      }
    }
  }
}