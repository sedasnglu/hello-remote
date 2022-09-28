pipeline {
    agent any
    stages {
        stage('Docker Build') {
            steps {
                sh 'docker build -t 192.168.56.12:5000/hello-jenkins/hello:v1 .'
            }
        }
       stage('Docker Push') {
           steps {
               sh 'docker login 192.168.56.12:5000 -u seda -p seda'
               sh 'docker push 192.168.56.12:5000/hello-jenkins/hello:v1'
            }
        }
       stage('Deploy Kubernetes') {
           steps {
               sh 'kubectl create namespace test'
            }
        }
    }
}
