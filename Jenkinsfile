pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'sudo docker build -t ${JOB_NAME}-${BUILD_NUMBER} . && sudo python -m pip install --upgrade pip'
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