pipeline {
  agent none
  stages {
    stage('Build') {
      agent {
        kubernetes {
          yaml readFile('manifests/maven.yaml')  // Define the Kubernetes pod here
        }
      }
      steps {
        node('building') { // Now it's within the node block
          checkout scm  // Checkout the code from the repository
          container('maven') {  // Define the container to use for Maven tasks
            sh 'mvn --version'  // Run Maven version command
          }
        }
      }
    }
  }
}
