pipeline {
    agent any

    stages {
        stage('Build') {

            steps { 
                withEnv(["HOME=${env.WORKSPACE}"]){
                 sh 'docker build -t ${JOB_NAME}-${BUILD_NUMBER} Dockerfile '

                }
            }
        }
        stage('Test') {
            agent {
                docker { image 'python:3.7-alpine' }
            }
            steps {
                sh ' python3 -m pip install --upgrade pip && pip install -r requirements.txt'
                 sh 'python3 router/app.py'
                sh 'python3 ./test/hello.py test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}