pipeline {
    agent any
    stages {
        stage('Docker Build') {
            steps {
                sh 'docker build -t kutuphane.jandarma.gov.tr/hello-jenkins/hello:v1 .'
            }
        }
       stage('Docker Push') {
           steps {
               sh 'docker login https://kutuphane.jandarma.gov.tr -u hello -p Ankara06*'
               sh 'docker push https://kutuphane.jandarma.gov.tr/hello-jenkins/hello:v1'
            }
        }
    }
}
