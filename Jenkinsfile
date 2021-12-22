pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'sudo -S docker build -t ${JOB_NAME}-${BUILD_NUMBER} . && sudo -S python3 -m pip3 install --upgrade pip && pip3 install -r requirements.txt'
                python3 'router/app.py'
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