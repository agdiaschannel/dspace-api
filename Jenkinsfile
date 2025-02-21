pipeline {
  agent none
  
  stages {
    stage('Run maven') {
     agent  {
       kubernetes {
        yaml '''
          apiVersion: v1
          kind: Pod
          spec:
            containers:
            - name: maven
              image: maven:alpine
              command:
              - cat
              tty: true
        '''
       }
     }
    }
  }
}