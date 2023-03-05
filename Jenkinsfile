pipeline {
    agent any
    tools { 
      maven 'MAVEN_HOME' 
    }
    stages {
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }
        // add more stages if needed
    }
}
