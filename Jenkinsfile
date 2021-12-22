pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
                sh 'python -m py_compile sources/router/app.py '
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