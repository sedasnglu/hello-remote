pipeline {
    agent any
    environment {
      imageId = 'hello-jenkins/jenkins:1.$BUILD_NUMBER'
      docker_registry = 'kutuphane.jandarma.gov.tr'
      docker_creds = credentials('docker_creds_USR=hello docker_creds_PSW=Ankara06*')
      echo $docker_registry
    }
    stages {
      stage('Docker build') {
        steps {
          sh "docker build --no-cache --force-rm -t ${imageId} ."
        }
      }
      stage('Docker push') {
        steps {
          sh'''
            docker login $docker_registry --username $docker_creds_USR --password $docker_creds_PSW
            docker push $imageId
            docker logout
          '''
        }
      }
      stage('Clean') {
        steps{
          sh "docker rmi ${imageId}"
        }
      }
    }
  }
