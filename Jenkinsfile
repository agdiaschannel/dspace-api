pipeline {
  agent {
    kubernetes {
      
      defaultContainer 'jnlp' // Label for identifying the pod
      podTemplate(
        label: 'my-pod',
        containers: [
          containerTemplate(
            name: 'maven',
            image: 'maven:3.8.5-openjdk-17',
            ttyEnabled: true,
            command: 'cat'
          )

        ] // End of containers


      ) // End of podTemplate
    }
  }
  stages {
    stage('Checkout') {
      steps {
        script {
          checkout scm
        }
      }
    }
    stage('Build') {
      steps {
        script {
          container('maven') {
            sh 'mvn package'
          }
        }
      }
    }
  }
}