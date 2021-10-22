pipeline {
    agent {
        label 'docker'
    }

    stages {
        stage('Build') {
            environment {
                HTTP_PROXY = 'socks5://192.168.0.30:1080'
            }

            steps {
                script {
                    def image = docker.image('jin2chen/php:7.4-fpm-alpine')

                    image.pull()
                    image.inside {
                        sh 'env'
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