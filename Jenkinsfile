pipeline {
    agent any
    stages {
        stage('Docker Build') {
            steps {
                sh 'echo docker build'
                sh 'docker build -t kutuphane.jandarma.gov.tr/hello-jenkins/hello:v1 .'
            }
        }
        stage('Docker Push') {
            steps {
                sh 'echo docker login'
                sh 'docker login https://kutuphane.jandarma.gov.tr -u hello -p Ankara06*'
                sh 'echo docker push'
                sh 'docker push https://kutuphane.jandarma.gov.tr/hello-jenkins/hello:v1'
  
          }
        }
    }
}
