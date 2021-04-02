pipeline {
    environment {
        registry = "gvanishri/expensetracker"
        registryCredential = 'dockerID'
    }    

    agent any

    stages {
        stage('clone') {
            steps {
                git 'https://github.com/gvanishri/ExpenseTracker.git'
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
        stage('Build image') {
            steps {
                script {
                    docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Push image') {
            steps {
                script {
                    docker.push registry + ":$BUILD_NUMBER"
                }
            }
        }        
        /*
        stage('deploy') {
            steps {
                sh 'systemctl start expense &'
            }
        }
        */
    }
/*
    post {
        always {
            cleanWs()
        }
    }
*/
}
