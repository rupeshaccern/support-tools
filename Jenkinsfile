pipeline {
    agent any
    stages {
        agent {dockerfile true}
        stage('Build') {
            steps {
                sh 'python -m pip install --upgrade pip $$ pip install -r requirements.txt'
                sh 'python -m py_compile /router/app.py '
                stash(name: 'compiled-results', includes: 'sources/*.py*')
            }
        }
        stage('Test') { 
            steps {
                sh 'py.test --junit-xml test-reports/results.xml sources/test/hello.py' 
            }
            post {
                always {
                    junit 'test-reports/results.xml' 
                }
            }
        }
    }
}