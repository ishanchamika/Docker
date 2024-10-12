pipeline {
    agent any
    stages{
        stage("checkout"){
            steps{
                checkout scm
            }
        }

        stage("Test"){
            steps{
                bat 'sudo npm istall'
                bat 'npm test'
            }
        }

        stage("Build"){
            steps{
                bat 'npm run build'
            }
        }
    }
}