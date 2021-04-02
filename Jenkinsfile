pipeline {
    agent any

    def app

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
            /* This builds the actual image; synonymous to
            * docker build on the command line */

            app = docker.build("expensetracker/appnode")
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
