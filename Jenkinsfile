pipeline {
    agent any 
    
    stages { 
        stage('SCM Checkout') {
            steps {
                retry(3) {
                    git branch: 'main', url: 'https://github.com/ishanchamika/Docker'
                }
            }
        }
        stage('Build Docker Image') {
            steps {  
                bat 'docker build -t ishanchamika/react-app:%BUILD_NUMBER% .'
            }
        }
        stage('Login to Docker Hub') {
            steps {
                withCredentials([string(credentialsId: 'ics', variable: 'react-app-pwd')]) {
                   
                    bat 'docker login -u ishanchamika -p ${react-app-pwd}'
                }
            }
        }
        stage('Push Image') {
            steps {
                bat 'docker push ishanchamika/react-app:%BUILD_NUMBER%'
            }
        }
    }
    post {
        always {
            bat 'docker logout'
        }
    }
}
