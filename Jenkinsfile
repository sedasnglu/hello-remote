pipeline {
    agent any
    stages {
       stage('Docker Build') {
           steps {
               sh 'docker build -t 192.168.56.12:5000/hello-jenkins/hello:v1.${BUILD_ID} .'
            }
       }
       stage('Docker Push') {
           steps {
               sh 'docker login 192.168.56.12:5000 -u seda -p seda'
               sh 'docker push 192.168.56.12:5000/hello-jenkins/hello:v1.${BUILD_ID}'
            }
       }
       stage('Deploy Kubernetes') {
           steps {
               withKubeCredentials(kubectlCredentials: [[caCertificate: '', clusterName: 'kubernetes', contextName: 'kubernetes-admin', credentialsId: 'jenkins', 
                                   namespace: 'default', serverUrl: 'https://192.168.56.10:6443']]) {
                sh 'curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.23.7/bin/linux/amd64/kubectl"'  
                sh 'chmod u+x ./kubectl'
                sh './kubectl apply -f deployment.yaml'
                sh './kubectl set image deployments/hello-go hello=192.168.56.12:5000/hello-jenkins/hello:v1.${BUILD_ID}'
               }
           }
        }
    }
}
