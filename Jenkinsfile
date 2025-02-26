pipeline {
  agent {
    kubernetes {
      podTemplates: [
        podTemplate(
          label: 'my-pod',
          containerTemplates: [
            containerTemplate(
              name: 'maven',
              image: 'maven:3.8.5-openjdk-17',
              command: 'cat'
            )
          ]

        )
      ]
      

    }
  }
  stages(
    stage('checkout scm') {
      steps {
        script {
          checkout scm
        }
      }
    }
  )
}