pipeline {
    agent any

    stages {
        stage('Build') {

            steps { 
                withEnv(["HOME=${env.WORKSPACE}"]){
                 echo 'build....'

                }
            }
        }
        stage('Test') {
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