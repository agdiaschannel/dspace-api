pipeline {
  agent none
  stages {
    stage('Maven Build') {
      agent {
        kubernetes {
          yamlFile 'maven.yaml'
        }
      }
      steps {
        container('maven') {
          sh 'mvn package --file DSpace-dspace-8.1/dspace/pom.xml'
        }
      }
    }
    stage('Build Docker Image') {
      agent {
        kubernetes {
          yamlFile 'buildah.yaml'
        }
      }
      steps {
        container('buildah') {
          sh '''
            buildah bud -t my-dspace-image .
            buildah push my-dspace-image
          '''
        }
      }
    }
  }
}