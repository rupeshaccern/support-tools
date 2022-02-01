pipeline {
    agent none

    stages {
        stage('Build') {
            agent {
                docker { image 'python:3.7-alpine' }
            }
            steps { 
                withEnv(["HOME=${env.WORKSPACE}"]){
                 sh 'docker build -t ${JOB_NAME}-${BUILD_NUMBER} . && apt-get install python3 && python3 -m pip install --upgrade pip && pip install -r requirements.txt'
                 sh 'python3 router/app.py'
                }
            }
        }
        stage('Test') {
            steps {
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