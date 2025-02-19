pipeline {
  agent any
  stages {
    stage('DSpace Directory') {
        steps {
          sh 'mkdir ${WORKSPACE}/dspace'
        }
    }
    stage('Build') {
        agent {
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
        steps {
            container('maven') {
                sh 'mvn --version'
            }
        }
    }
  }
}