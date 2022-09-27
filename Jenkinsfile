pipeline {
    agent any
    stages {
        stage('Docker Build') {
            steps {
                sh 'docker build -t xxxxxxxxx/hello-jenkins/hello:v1 .'
            }
        }
       stage('Docker Push') {
           steps {
               sh 'docker login https://xxxxxx -u hello -p xxxxx'
               sh 'docker push xxxxxx/hello-jenkins/hello:v1'
            }
        }
    }
}
