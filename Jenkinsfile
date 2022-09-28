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
               sshagent(['k8s']) {
            sh "scp -o StrictHostKeyChecking=no deployment.yaml vagrant@192.168.56.10:/home/vagrant"
            script {
                try{
                    sh "ssh vagrant@192.168.56.10 kubectl create -f ."
                }catch(error){
                    sh "ssh vagrant@192.168.56.10 kubectl create -f ."
            }
}
        }
            }
        }
    }
}
