pipeline {
    agent any

 
    stages {
        stage('clone') {
            steps {
                git 'https://github.com/gvanishri/feb_2021_5.git'
            }
        }
        stage('compile') {
            steps {
                sh '/usr/bin/mvn compile'
            }
        }
        stage('test') {
            steps {
                sh '/usr/bin/mvn test'
            }
        }
        stage('package') {
            steps {
                sh '/usr/bin/mvn clean install'
            }
        }
        stage('deploy') {
            steps {
                sh 'systemctl start expense &'
            }
        }
    }
   
}
