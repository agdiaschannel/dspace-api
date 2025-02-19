pipeline {
  agent any
  stages {
    
    stage('Build') {
      agent {
        kubernetes {
             yaml '''
               apiVersion: v1
               kind: Pod
               spec:
                 containers:
                 - name: maven
                   image: maven:3-ibm-semeru-23-jammy
                   command:
                   - sleep
                   args:
                   - 99d
             '''
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
