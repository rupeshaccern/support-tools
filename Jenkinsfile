node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    def SONAR_HOME = tool 'rupeshaccern';
    withSonarQubeEnv() {
      sh "${SONAR_HOME}/bin/sonar-scanner"
    }
  }
}
