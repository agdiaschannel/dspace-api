pipeline {
    agent {
        kubernetes {
            label 'my-pod-label'  // Label for the pod
            defaultContainer 'jnlp' // Default container for Jenkins agent
            containerTemplates [
                containerTemplate(
                    name: 'nodejs',   // Name of the container
                    image: 'node:14', // Docker image for Node.js container
                    ttyEnabled: true, // Allow interaction with the container
                    command: 'cat',   // Keeps the container running
                    resourceRequestMemory: '1Gi',
                    resourceRequestCpu: '500m',
                    resourceLimitMemory: '2Gi',
                    resourceLimitCpu: '1'
                )
            ]
        }
    }
    stages {
        stage('Build') {
            steps {
                container('nodejs') {
                    sh 'npm install'
                }
            }
        }
    }
}
