pipeline {
  agent none
  stages {
    stage('Build') {
      agent {
        kubernetes {
          node('built-in') {
            yamlFile('manifests/maven.yaml') // This line needs to be inside the node block
          }
        
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