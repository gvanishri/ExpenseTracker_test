pipeline {
    environment {
        registry = "gvanishri/expensetracker"
        registryCredential = 'dockerID'
        dockerimage = ''
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
        /*       
        stage('Build image') {
            steps {
                script {
                    docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        */
        stage('Build image') {
            steps {
                script {
                    dockerimage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }

        stage('Push image') {
            steps {
                script {
                    docker.withRegistry( 'https://registry.hub.docker.com', registryCredential ) {
                        dockerImage.push("$BUILD_NUMBER")
                        dockerImage.push('latest')
                    }
                }
            }
        }  
/*
        stage('Remove Unused docker image') {
            steps{
                sh "docker rmi $registry:$BUILD_NUMBER"
                sh "docker rmi $registry:latest"
            }
        }
*/

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
