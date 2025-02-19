pipeline {
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
               - cat
               tty: true
         '''
     }
        }
  stages {
    
    stage('Build') {
       
        steps {
            container('maven') {
                sh 'mvn --version'
            }
        }
    }
  }
}