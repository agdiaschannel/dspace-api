pipeline {
  agent {
    kubernetes {
      yaml '''
        apiVersion: v1
        kind: Pod
        metadata:
            name: maven-pod  # This name isn't directly used by the pipeline, but good practice
        spec:
          containers:
          - name: maven    # This *must* match the container name in the pipeline
            image: maven:3.9.9-eclipse-temurin-21-alpine
            command: ["cat"] # A dummy command to keep the container running initially.
            resources:
              requests:
                cpu: 100m
                memory: 256Mi
            volumeMounts:
            - name: maven-repo
              mountPath: /root/.m2/repository
          volumes:
          - name: maven-repo
            emptyDir: {}
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