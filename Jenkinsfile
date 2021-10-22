pipeline {
    agent {
        label 'docker'
    }

    stages {
        stage('Build') {
            steps {
                script {
                    docker
                        .image('jin2chen/php:7.4-fpm-alpine')
                        .pull()
                        .inside {
                            sh './devops/install.sh'
                        }
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}