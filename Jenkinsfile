pipeline {
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
        
        stage('Push image') {
            script {
                docker.withRegistry('https://hub.docker.com/', 'dockerID') {            
                    app.push("${env.BUILD_NUMBER}")            
                    app.push("latest")        
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

    post {
        always {
            cleanWs()
        }
    }
}
