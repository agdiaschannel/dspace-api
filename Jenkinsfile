pipeline {
  agent any
  stages {
    stage('Checkout SCM') {
        steps {
            git credentialsId: 'github-token', url: 'https://github.com/agdiaschannel/dspace-api.git'
        }
    }
  }
}