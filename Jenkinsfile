pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('e156ca2a-561e-49cd-a9ce-a4eb1780c63a')
    }
    stages {
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }
        // add more stages if needed
        stage('Docker Build') {
            steps {
                bat 'docker build -t sofiamehta03/jenkins-docker-hub .'
            }
        }
        stage('Docker Login') {
            steps {
                    withCredentials([usernamePassword(credentialsId: 'e156ca2a-561e-49cd-a9ce-a4eb1780c63a', usernameVariable: 'DOCKERHUB_CREDENTIALS_USER', passwordVariable: 'DOCKERHUB_CREDENTIALS_PASSWORD')]) {
                    bat """
                        echo Logging in to Docker Hub...
                        docker login --username ${DOCKERHUB_CREDENTIALS_USER} --password ${DOCKERHUB_CREDENTIALS_PASSWORD}
                    """
                }
            }
        }
        stage('Docker Push image') {
            steps {
                bat 'docker push sofiamehta03/jenkins-docker-hub'
           }
        }
    }
}
