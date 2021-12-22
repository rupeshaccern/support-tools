pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t ${JOB_NAME}-${BUILD_NUMBER} .'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}