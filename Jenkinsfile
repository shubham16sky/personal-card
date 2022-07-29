pipeline{

    agent any

    environment {
        dock=credentials('docker-hub')

    }

    stages {
        stage('gitclone'){
            steps {
                git branch: 'main', url: 'https://github.com/shubham16sky/personal-card.git'

            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t pranit039/personal-jenkins:latest .'
            }
        }

        stage('login') {
            steps{
                sh 'echo $dock | docker login -u pranit039 --password-stdin'
            }
        }

        stage('push') {
            steps {
                sh 'docker push pranit039/personal-jenkins:latest'
            }
        }

        stage('logout') {
            steps {
                sh 'docker logout'
            }
        }


    }

    

}
