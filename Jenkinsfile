pipeline {
    agent {
        docker { image 'node:18.16.0-alpine'}
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        stage('Build') {
            steps {
                sh 'echo starting build stage'
            }
        }
        }
    }
}