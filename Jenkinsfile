pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'python -m pip install --upgrade pip'
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