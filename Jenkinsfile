pipeline {
    agent {
        docker { image 'ubuntu:latest' }
    }

    stages {
        stage('Build') {
            steps { 
                withEnv(["HOME=${env.WORKSPACE}"]){
                 sh 'docker build -t ${JOB_NAME}-${BUILD_NUMBER} . && python3 -m pip install --upgrade pip && pip install -r requirements.txt'
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