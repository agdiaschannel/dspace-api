pipeline {
  agent {
    kubernetes {
      
      defaultContainer 'jnlp' //Default container to use for Jenkins agent
      podTemplate(
        label: 'my-pod',
        containers: [
          containerTemplate(
            name: 'maven',
            image: 'maven:3.8.5-openjdk-17',
            ttyEnabled: true,
            command: 'cat'
          ),
        ] // end of containers
      )
    }
  }
  stages(
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
            sh 'mvn --version'
          }
        }
      }
    }
  )
}