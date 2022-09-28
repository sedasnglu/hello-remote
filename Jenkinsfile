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
               withKubeCredentials(kubectlCredentials: [[caCertificate: 'LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURJVENDQWdtZ0F3SUJBZ0lJS01pSmlWMEZxN1l3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TWpBNU1qWXlNVEExTWpSYUZ3MHlNekE1TWpZeU1UQTFNamRhTURReApGekFWQmdOVkJBb1REbk41YzNSbGJUcHRZWE4wWlhKek1Sa3dGd1lEVlFRREV4QnJkV0psY201bGRHVnpMV0ZrCmJXbHVNSUlCSWpBTkJna3Foa2lHOXcwQkFRRUZBQU9DQVE4QU1JSUJDZ0tDQVFFQXJkbUlWVlM1QytwZkpwQVYKWHdtWGxQTVM4c2FGY1Q1UTBlN1dHN1c0QVEzdDVXYkt0UDczSkdWT2s5M2JWRU9ndnlXODk2UFU5UUdBQjg2bApBZnNNZjdvNksrNlRldlAyZC9XNmpIWDkvWU1NRC95Q3BoR0xMdVI4U2ZGM1Y0UEZZSXR5OTRKNXpXV1h1aW1rCjhhc2FQdUNpQVQ2UlVUc0EzZG1BVEh5NTQ0Sy9pR3UvcTVkQUd1bkUvaU1lSTU1a20rU3RUNW1vajMzZ1orSFYKVGNsSHNUbTRZam5YQVBmdi91YW8xYnZ3QlpBVUNnLzRiVEwveHBFNElDNVk0MVBtdTZoQVZzbTZmR0JYWGNtVgpYZFNwZy9BM2dhZHZPZVc4UERPbW1oWm5YM0xKNVYxVE02YVN4V0dxV2prZDFpQVNKQkpucmo0UTUrc0VBSkFpCm9tVkFsd0lEQVFBQm8xWXdWREFPQmdOVkhROEJBZjhFQkFNQ0JhQXdFd1lEVlIwbEJBd3dDZ1lJS3dZQkJRVUgKQXdJd0RBWURWUjBUQVFIL0JBSXdBREFmQmdOVkhTTUVHREFXZ0JUZFFzREZ6cG1iZmNndzkvdXg1anJDeFdOOAp1akFOQmdrcWhraUc5dzBCQVFzRkFBT0NBUUVBb3VlQUd6UmViZU9hUHFqZlo2YktLMVZjRHBzb3g1aEIrcWtCCjgyaWxkc1F3TVdGWUh4ZWNKcDl6VU9uWHJ2NEJ3WjlMbVhQdW5vT3YyVUZkL1BmNnVvSmUvOTAvN0lGZTVIZHgKUER3TEROb00xQUpZaVY3dEJFb1N1Zk9ucUNQUFE5YVhYVmxwYjFSdzlwZmpweWtsNEpRM01sbTJHUVBIZWt4SApqWEdnOU1wRVZ5bkdrNlhDdVpFaGhoK3BhRkNMcU5lcnB4Y3NQUUVzT2U2dGdiYjFYcnpXMk9EcGVTUlIwRTZzCjNVVWtUUk0yaXRKRHhScnFUNDBMeGZsK09FVG5mTHBpcGtWZlpNbFFoQnc2bGxDd2RITXl1ZnBnUXMxTTgvWTAKN0wrTkJPcEQ0emlaT2NySDJSVHp4YXZqUmExVWRSN0oycCtoaTM2ejF1THdxU0tiV3c9PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==', clusterName: 'kubernetes', contextName: 'kubernetes-admin', credentialsId: 'jenkins', namespace: 'default', serverUrl: 'https://192.168.56.10:6443']]) {
               sh 'kubectl apply -f deployment.yaml'
               }
            }
        }
    }
}
