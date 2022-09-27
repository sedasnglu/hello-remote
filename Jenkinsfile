pipeline {  
    environment {
      registry = "kutuphane.jandarma.gov.tr/hello-jenkins"
      registryCredential = 'dockerregistry'
    }  
    agent any  
      
    stages {
      stage('Building image') {
        steps{
          script {
            docker.build registry + ":$BUILD_NUMBER"
          }
        }
      }
      stage('Deploy Image') {
        steps{
          script {
            docker.withRegistry( '', registryCredential ) {
              dockerImage.push()
            }
          }
       }
   }
}

}
